use clap::{Parser,Subcommand,Args};
use std::path::Path;
use std::error::Error;
use std::fs;
use std::fmt;
use std::io::Write;
use std::process::Command;
use std::os::unix::fs::PermissionsExt;
use rand::RngExt;

#[derive(Parser, Debug)]
#[clap(multicall(true))]
struct Cli {
    #[clap(subcommand)]
    commands : Commands,
}

#[derive(Subcommand, Debug)]
enum Commands {
    ZswapGenerator(GeneratorArgs),
    ZswapSetup(SetupArgs),
}

#[derive(Args, Debug)]
struct GeneratorArgs {
    normal_dir: Box<Path>,
    early_dir: Option<Box<Path>>,
    late_dir: Option<Box<Path>>,
}

#[derive(Args, Debug)]
struct SetupArgs {
    #[clap(subcommand)]
    setup_command: SetupCommands,
}

#[derive(Subcommand, Debug)]
enum SetupCommands {
    Create(CreateArgs),
    Stop(StopArgs),
}

#[derive(Parser, Debug)]
struct CreateArgs {
    swapfile: Box<Path>,
    label: String,
    size: u64,
}

#[derive(Parser, Debug)]
struct StopArgs {
    swapfile: Box<Path>,
    label: String,
}

#[derive(Debug, Clone)]
struct PhysicalRamUnknown;

impl fmt::Display for PhysicalRamUnknown {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Couldn't figure out physical ram size")
    }
}

impl Error for PhysicalRamUnknown {}

fn get_sparse_swapfile_size() -> Result<i64, Box<dyn Error>> {
    let meminfo = fs::read_to_string("/proc/meminfo")?;
    for line in meminfo.lines() {
        match line.strip_prefix("MemTotal:") {
            Some(v) => {
                match v.trim_start().strip_suffix(" kB") {
                    Some(i) => {
                        let int_value : i64 = i.parse()?;
                        return Ok(int_value * 1024);
                    },
                    None => ()
                }
            },
            None => ()
        }
    }

    return Err(PhysicalRamUnknown.into());
}

fn escaped(name : &str) -> String {
    name.chars().map(|c| {
        if !c.is_ascii_alphanumeric() {
            let mut buffer = [0; 6];
            let bytes = c.encode_utf8(&mut buffer);
            bytes.bytes().map(|c| format!("\\x{:02x}", c)).collect::<Vec<_>>().join("")
        } else {
            c.to_string()
        }
    }).collect::<Vec<String>>().join("")
}

#[derive(Debug, Clone)]
struct ZswapModuleMissing;

impl fmt::Display for ZswapModuleMissing {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "zswap module parameter dir not found")
    }
}

impl Error for ZswapModuleMissing {}

#[derive(Debug, Clone)]
struct ConfigurationError {
    message : String,
}

impl fmt::Display for ConfigurationError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "configuration error: {}", self.message)
    }
}

impl Error for ConfigurationError {}

fn force_symlink(target : &Path, link : &Path) -> Result<(), Box<dyn Error>> {
    match link.parent() {
        Some(parent) => {
            let tmpnam: String = rand::rng()
                .sample_iter(&rand::distr::Alphanumeric)
                .take(8)
                .map(char::from)
                .collect();

            let tmp_path = parent.join(tmpnam);
            std::os::unix::fs::symlink(target, &tmp_path)?;
            Ok(std::fs::rename(&tmp_path, link)?)
        },
        None => {
            Ok(std::os::unix::fs::symlink(target, link)?)
        }
    }
}

fn disable_sysctl() -> Result<(), Box<dyn Error>> {
    // We do not need sysctl configuration, let's mask it.
    match fs::remove_file("/run/sysctl.d/50-zswap.conf") {
        Ok(()) => Ok(()),
        Err(error) => match error.kind() {
            std::io::ErrorKind::NotFound => Ok(()),
            _ => Err(error),
        }
    }?;
    fs::create_dir_all("/run/sysctl.d")?;
    force_symlink(&Path::new("/dev/null"), &Path::new("/run/sysctl.d/50-zswap.conf"))?;
    return Ok(())
}

fn generator(args : GeneratorArgs) -> Result<(), Box<dyn Error>> {
    let cmdline = procfs::cmdline()?;
    for arg in cmdline {
        // Let's not create a swap file in memory
        if arg == "root=live:gnomeos" {
            return Ok(disable_sysctl()?);
        }
    }

    let zswap = Path::new("/sys/module/zswap/parameters");
    if !zswap.is_dir() {
        return Err(ZswapModuleMissing.into());
    }

    if fs::read_to_string(zswap.join("enabled"))? != "Y\n" {
        return Ok(disable_sysctl()?);
    }

    let config = match fs::read_to_string("/etc/zswap.conf") {
        Ok(value) => {
            let parsed = value.parse::<toml::Table>()?;
            Ok(parsed)
        }
        Err(error) => match error.kind() {
            std::io::ErrorKind::NotFound => {
                let mut default = toml::toml! {
                    [default-swap]
                    path = "/swap/default-swap"
                };
                default.get_mut("default-swap").expect("missing default-swap").as_table_mut().expect("defaults-swap not mutable")
                    .insert("size".to_string(), toml::Value::Integer(get_sparse_swapfile_size()?));
                Ok(default)
            }
            _ => Err(error),
        }
    }?;

    for (name, cfg) in config.iter() {
        let path = match &cfg.get("path") {
            Some(toml::Value::String(s)) => Ok(Path::new(s.as_str())),
            _ => Err(ConfigurationError{
                message: format!("expected string value for path for {}", name)
            })
        }?;
        let size = match cfg.get("size") {
            Some(toml::Value::Integer(i)) => Ok(i),
            _ => Err(ConfigurationError{
                message: format!("expected integer value for size for {}", name)
            })
        }?;
        let escaped_name = escaped(name);
        let service = format!("zswap-setup@{}.service", escaped_name);
        let mut service_unit = atomic_write_file::AtomicWriteFile::options()
            .open(args.normal_dir.join(service))?;
        writeln!(service_unit, "[Unit]")?;
        writeln!(service_unit, "DefaultDependencies=no")?;
        writeln!(service_unit, "Before=shutdown.target")?;
        writeln!(service_unit, "Conflicts=shutdown.target")?;
        match path.parent() {
            Some(parent) => {
                writeln!(service_unit, "RequiresMountsFor={}", parent.display())?;
            }
            _ => {}
        }
        writeln!(service_unit, "[Service]")?;
        writeln!(service_unit, "Type=oneshot")?;
        writeln!(service_unit, "RemainAfterExit=yes")?;
        writeln!(service_unit, "ExecStart=/usr/lib/zswap-generator/zswap-setup create {} %I {}", path.display(), size)?;
        writeln!(service_unit, "ExecStop=/usr/lib/zswap-generator/zswap-setup stop {} %I", path.display())?;
        service_unit.commit()?;

        let swap = format!("dev-disk-by\\x2dlabel-{}.swap", escaped_name);
        let mut swap_unit = atomic_write_file::AtomicWriteFile::options()
            .open(args.normal_dir.join(&swap))?;
        writeln!(swap_unit, "[Unit]")?;
        writeln!(swap_unit, "Wants=zswap-setup@{}.service", escaped_name)?;
        writeln!(swap_unit, "After=zswap-setup@{}.service dev-disk-by\\x2dlabel-{}.device", escaped_name, escaped_name)?;
        writeln!(swap_unit, "BindsTo=dev-disk-by\\x2dlabel-{}.device", escaped_name)?;
        writeln!(swap_unit, "[Swap]")?;
        writeln!(swap_unit, "What=/dev/disk/by-label/{}", name)?;
        writeln!(swap_unit, "Options=discard")?;
        swap_unit.commit()?;

        fs::create_dir_all(args.normal_dir.join("swap.target.wants"))?;
        force_symlink(&Path::new("..").join(&swap), &args.normal_dir.join("swap.target.wants").join(&swap))?;
    }

    Ok(())
}

#[derive(Debug, Clone)]
struct CommandError {
    program : String,
    code : Option<i32>,
}

impl CommandError {
    pub fn new(command : &str, exit_status : std::process::ExitStatus) -> Self {
        Self {
            program : command.to_string(),
            code : exit_status.code(),
        }
    }
}

impl std::fmt::Display for CommandError {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self.code {
            Some(code) => write!(f, "program {} exited with error status {}", self.program, code),
            None => write!(f, "program {} exited with a signal", self.program),
        }
    }
}

impl std::error::Error for CommandError {
    fn source(&self) -> Option<&(dyn Error + 'static)> {
        None
    }
}

fn create(args : CreateArgs) -> Result<(), Box<dyn Error>> {
    // TODO: probably tmpfiles.d should get a ftruncate option instead
    match args.swapfile.parent() {
        Some(parent) => {
            fs::create_dir_all(parent)?;
        },
        None => ()
    }
    {
        let f = std::fs::File::create(&args.swapfile)?;
        f.set_len(args.size)?;
        let perm = std::fs::Permissions::from_mode(0o600);
        f.set_permissions(perm)?;
    }

    // TODO: Maybe do ioctl FS_IOC_SETFLAGS directly
    let mut chattr = Command::new("chattr");
    chattr.arg("+C").arg(format!("{}", args.swapfile.display()));
    let chattr_status = chattr.status()?;
    chattr_status.code().filter(|code| *code == 0).ok_or(CommandError::new("chattr", chattr_status))?;

    let mut mkswap = Command::new("mkswap");
    mkswap.arg("--label").arg(args.label).arg(format!("{}", args.swapfile.display()));
    let mkswap_status = mkswap.status()?;
    mkswap_status.code().filter(|code| *code == 0).ok_or(CommandError::new("mkswap", mkswap_status))?;

    let loop_control = loopdev::LoopControl::open()?;
    let loop_device = loop_control.next_free()?;
    loop_device.attach_file(args.swapfile)?;

    Ok(())
}

fn stop(args : StopArgs) -> Result<(), Box<dyn Error>> {
    let loop_device = loopdev::LoopDevice::open(Path::new("/dev/disk/by-label").join(args.label))?;
    loop_device.detach()?;

    fs::remove_file(args.swapfile)?;

    Ok(())
}

fn main() -> Result<(), Box<dyn Error>> {
    let cli = Cli::parse();

    match cli.commands {
        Commands::ZswapGenerator(args) => {
            generator(args)
        }
        Commands::ZswapSetup(setup_args) => {
            match setup_args.setup_command {
                SetupCommands::Create(args) => {
                    create(args)
                }
                SetupCommands::Stop(args) => {
                    stop(args)
                }
            }
        }
    }
}
