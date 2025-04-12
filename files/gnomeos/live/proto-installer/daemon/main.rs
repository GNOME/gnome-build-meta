use env_logger;
use futures::try_join;
use log::{debug, warn};
use rand::{distr::Alphanumeric, Rng};
use std::collections::HashMap;
use std::io::Write;
use std::os::unix::fs::OpenOptionsExt;
use std::{error::Error, string::String};
use tempfile;
use tokio::process::Command;
use zbus::{connection, Connection, interface, zvariant::OwnedValue, message::Header, fdo::Error::Failed};
use blkid;

mod polkit;
use polkit::{PolkitAuthorityProxy, CheckAuthorizationFlags, Subject};
mod logind;
use logind::LogindProxy;
mod systemd;
use systemd::SystemdProxy;

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

#[derive(Debug, Clone)]
struct UnitError {
    unit : String,
}

impl UnitError {
    pub fn new(unit : &str) -> Self {
        Self {
            unit : unit.to_string(),
        }
    }
}

impl std::fmt::Display for UnitError {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "unit {} failed to start", self.unit)
    }
}

impl std::error::Error for UnitError {
    fn source(&self) -> Option<&(dyn Error + 'static)> {
        None
    }
}

#[derive(Debug, Clone)]
struct GenericInstallError {
    reason : String,
}

impl GenericInstallError {
    pub fn new(reason : &str) -> Self {
        Self {
            reason : reason.to_string(),
        }
    }
}

impl std::fmt::Display for GenericInstallError {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "{}", self.reason)
    }
}

impl std::error::Error for GenericInstallError {
    fn source(&self) -> Option<&(dyn Error + 'static)> {
        None
    }
}

enum InstallerError {
    Command(CommandError),
    Unit(UnitError),
    GenericInstall(GenericInstallError),
    Zbus(zbus::Error),
    Io(std::io::Error),
    FromUtf8Error(std::string::FromUtf8Error),
    Json(serde_json::Error),
    Blkid(blkid::BlkIdError),
    Join(tokio::task::JoinError),
}

impl From<zbus::Error> for InstallerError {
    fn from(e: zbus::Error) -> Self {
        InstallerError::Zbus(e)
    }
}

impl From<CommandError> for InstallerError {
    fn from(e: CommandError) -> Self {
        InstallerError::Command(e)
    }
}

impl From<UnitError> for InstallerError {
    fn from(e: UnitError) -> Self {
        InstallerError::Unit(e)
    }
}

impl From<GenericInstallError> for InstallerError {
    fn from(e: GenericInstallError) -> Self {
        InstallerError::GenericInstall(e)
    }
}

impl From<std::io::Error> for InstallerError {
    fn from(e: std::io::Error) -> Self {
        InstallerError::Io(e)
    }
}

impl From<std::string::FromUtf8Error> for InstallerError {
    fn from(e: std::string::FromUtf8Error) -> Self {
        InstallerError::FromUtf8Error(e)
    }
}

impl From<serde_json::Error> for InstallerError {
    fn from(e: serde_json::Error) -> Self {
        InstallerError::Json(e)
    }
}

impl From<blkid::BlkIdError> for InstallerError {
    fn from(e: blkid::BlkIdError) -> Self {
        InstallerError::Blkid(e)
    }
}

impl From<tokio::task::JoinError> for InstallerError {
    fn from(e: tokio::task::JoinError) -> Self {
        InstallerError::Join(e)
    }
}

impl std::fmt::Display for InstallerError {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            InstallerError::Command(e) => e.fmt(f),
            InstallerError::Unit(e) => e.fmt(f),
            InstallerError::GenericInstall(e) => e.fmt(f),
            InstallerError::Zbus(e) => e.fmt(f),
            InstallerError::Io(e) => e.fmt(f),
            InstallerError::FromUtf8Error(e) => e.fmt(f),
            InstallerError::Json(e) => e.fmt(f),
            InstallerError::Blkid(e) => e.fmt(f),
            InstallerError::Join(e) => e.fmt(f),
        }
    }
}

async fn do_install_handle_errors(obj_server: &zbus::ObjectServer, conn : &Connection, device: String, recovery_passphrase : String, oem_install : bool, has_tpm2 : bool) -> zbus::Result<()> {
    debug!("installation started");
    match do_install(conn, device, recovery_passphrase, oem_install, has_tpm2).await {
        Err(err) => {
            warn!("installation failed: {err}");
            obj_server.interface("/org/gnome/Installer").await?.installation_failed(err.to_string()).await?
        }
        Ok(_) => {
            debug!("installation finished");
            obj_server.interface("/org/gnome/Installer").await?.installation_finished().await?
        }
    };

    Ok(())
}

async fn setup_srk() -> Result<(), InstallerError> {
    let cmd = Command::new("/usr/lib/systemd/systemd-tpm2-setup")
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("systemd-tpm2-setup", cmd))?;
    Ok(())
}

async fn pcrlock_unlock(what: &str) -> Result<(), InstallerError> {
    let cmd = Command::new("/usr/lib/systemd/systemd-pcrlock")
        .arg(format!("unlock-{what}"))
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("systemd-pcrlock", cmd))?;
    Ok(())
}

async fn remove_policy() -> Result<(), InstallerError> {
    let cmd = Command::new("/usr/lib/systemd/systemd-pcrlock")
        .arg("remove-policy")
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("systemd-pcrlock", cmd))?;
    Ok(())
}

async fn make_policy() -> Result<(), InstallerError> {
    try_join!(
        setup_srk(),
        pcrlock_unlock("firmware-config"),
        remove_policy(),
    )?;

    let target = std::path::Path::new("/var/lib/gnomeos/install-credentials");

    match std::fs::remove_dir_all(target) {
        Ok(_) => (),
        Err(err) if err.kind() == std::io::ErrorKind::NotFound => (),
        Err(err) => return Err(err.into())
    }

    let fake_esp = tempfile::tempdir()?;

    let cmd = Command::new("/usr/lib/systemd/systemd-pcrlock")
        .arg("make-policy")
        .arg("--location=770")
        .env("SYSTEMD_ESP_PATH", fake_esp.path().as_os_str())
        .env("SYSTEMD_RELAX_ESP_CHECKS", "1")
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("systemd-pcrlock", cmd))?;

    debug!("policy installed");

    let new_creds = std::path::Path::new(fake_esp.path()).join("loader/credentials");

    std::fs::create_dir_all(target)?;

    for entry in std::fs::read_dir(new_creds)? {
        let e = entry?;
        let path = e.path();
        if !path.is_dir() {
            std::fs::copy(path, target.join(e.file_name()))?;
        }
    }
    debug!("credentials copied");

    Ok(())
}

struct PartitionID {
    uuid  : String,
    label : String,
}

fn part_id_blocking(dev : &str) -> Result<PartitionID, InstallerError> {
    let probe = blkid::prober::Prober::new_from_filename(std::path::Path::new(dev))?;
    probe.enable_partitions(true)?;
    probe.set_partitions_flags(blkid::PartitionsFlags::ENTRY_DETAILS)?;
    probe.do_safe_probe()?;
    let uuid = probe.lookup_value("PART_ENTRY_UUID")?;
    let label = probe.lookup_value("PART_ENTRY_NAME")?;
    Ok(PartitionID{uuid: uuid, label: label})
}

async fn part_id(dev : &str) -> Result<PartitionID, InstallerError> {
    let p = dev.to_string();
    tokio::task::spawn_blocking(move || part_id_blocking(p.as_str())).await?
}

async fn write_repart_d(path : &std::path::Path, has_tpm2 : bool) -> Result<(), InstallerError> {
    let encrypt : String;
    if has_tpm2 {
        encrypt = "key-file+tpm2".to_string();
    } else {
        encrypt = "off".to_string();
    }

    let (usr_id, verity_id) = try_join!(
        part_id("/dev/gnomeos-installer/usr"),
        part_id("/dev/gnomeos-installer/verity"),
    )?;

    let usr_uuid = usr_id.uuid;
    let usr_label = usr_id.label;
    let verity_uuid = verity_id.uuid;
    let verity_label = verity_id.label;

    let mut esp = std::fs::File::create(path.join("10-esp.conf"))?;
    esp.write_all(
        "[Partition]\n\
         Type=esp\n\
         Format=vfat\n\
         CopyFiles=/usr/share/factory/efi:/\n\
         CopyFiles=/var/lib/gnomeos/installer-esp/EFI/Linux/gnomeos_%A.efi:/EFI/Linux/gnomeos_%A.efi\n\
         CopyFiles=/var/lib/gnomeos/install-credentials:/loader/credentials\n\
         SizeMinBytes=500M\n\
         SizeMaxBytes=1G\n"
    .as_bytes())?;
    let mut verity_a = std::fs::File::create(path.join("20-usr-verity-A.conf"))?;
    verity_a.write_all(format!(
        "[Partition]\n\
         Type=usr-verity\n\
         Label=gnomeos_usr_v_%A\n\
         # verity for 4G, algo sha256, block size 512 and hash size 512 is 275M\n\
         SizeMinBytes=275M\n\
         SizeMaxBytes=275M\n\
         CopyBlocks=/dev/gnomeos-installer/verity\n\
         Label={verity_label}\n\
         UUID={verity_uuid}\n"
    ).as_bytes())?;

    let mut usr_a = std::fs::File::create(path.join("21-usr-A.conf"))?;
    usr_a.write_all(format!(
        "[Partition]\n\
         Type=usr\n\
         Label=gnomeos_usr_%A\n\
         SizeMinBytes=4G\n\
         SizeMaxBytes=4G\n\
         CopyBlocks=/dev/gnomeos-installer/usr\n\
         Label={usr_label}\n\
         UUID={usr_uuid}\n"
    ).as_bytes())?;

    let mut verity_b = std::fs::File::create(path.join("30-usr-verity-B.conf"))?;
    verity_b.write_all(
        "[Partition]\n\
         Type=usr-verity\n\
         Label=gnomeos_usr_v_empty\n\
         # verity for 4G, algo sha256, block size 512 and hash size 512 is 275M\n\
         SizeMinBytes=275M\n\
         SizeMaxBytes=275M\n"
            .as_bytes())?;

    let mut usr_b = std::fs::File::create(path.join("31-usr-B.conf"))?;
    usr_b.write_all(
        "[Partition]\n\
         Type=usr\n\
         Label=gnomeos_usr_%A\n\
         SizeMinBytes=4G\n\
         SizeMaxBytes=4G\n"
            .as_bytes())?;

    let mut root = std::fs::File::create(path.join("50-root.conf"))?;
    root.write_all(format!(
        "[Partition]\n\
        Type=root\n\
        Label=root\n\
        Encrypt={encrypt}\n\
        CopyBlocks=/dev/null\n"
    ).as_bytes())?;

    Ok(())
}

async fn enable_efi(conn : &Connection) -> Result<(), InstallerError> {
    let systemd = SystemdProxy::new(conn).await?;
    let efi_automount = systemd.load_unit("efi.automount").await?;
    let _ = systemd.start_unit("efi.automount", "replace").await?;
    while !matches!(efi_automount.active_state().await?.as_str(), "active"|"failed") {
        efi_automount.receive_active_state_changed().await;
    }
    match efi_automount.active_state().await?.as_str() {
        "active" => Ok(()),
        _ => Err(InstallerError::Unit(UnitError::new("efi.automount"))),
    }
}

async fn swap_verity(new_usr : &str, new_verity : &str) -> Result<(), InstallerError> {
    let cmd = Command::new("/usr/lib/gnomeos-installer/swap-verity")
        .arg("usr").arg(new_usr).arg(new_verity)
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("swap-verity", cmd))?;
    Ok(())
}

async fn remove_loop() -> Result<(), InstallerError> {
    let gpt_dev = match std::fs::read_link("/dev/gnomeos-installer/gpt") {
        Ok(path) => path,
        Err(_) => return Ok(()),
    };
    let base = match gpt_dev.as_path().file_name() {
        None => return Ok(()),
        Some(base) => base,
    };
    let base_str = match base.to_str() {
        None => return Ok(()),
        Some(base) => base,
    };
    if !base_str.starts_with("loop") {
        return Ok(())
    }

    let cmd = Command::new("losetup")
        .arg("-d").arg("/dev/gnomeos-installer/gpt")
        .spawn()?
        .wait().await?;
    cmd.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("losetup", cmd))?;
    Ok(())
}

async fn swap_root(conn : &Connection, has_tpm2 : bool, root : &str) -> Result<(), InstallerError> {
    let mut real_root = root.to_string();

    if has_tpm2 {
        let systemd = SystemdProxy::new(conn).await?;
        let cryptsetup = systemd.load_unit("systemd-cryptsetup@root.service").await?;
        let _ = systemd.start_unit("systemd-cryptsetup@root.service", "replace").await?;
        while !matches!(cryptsetup.active_state().await?.as_str(), "active"|"failed") {
            cryptsetup.receive_active_state_changed().await;
        }
        match cryptsetup.active_state().await?.as_str() {
            "active" => (),
            _ => return Err(InstallerError::Unit(UnitError::new("systemd-cryptsetup@root.service"))),
        }

        real_root = "/dev/mapper/root".to_string();
    }

    let btrfs_replace = Command::new("btrfs")
        .arg("replace").arg("start").arg("1").arg(real_root).arg("/")
        .spawn()?
        .wait().await?;
    btrfs_replace.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("btrfs replace", btrfs_replace))?;

    let mut has_started = false;
    for _ in 0..20 {
        let btrfs_status = Command::new("btrfs")
            .arg("replace").arg("status").arg("/")
            .output().await?;
        let never_started = match String::from_utf8(btrfs_status.stdout) {
            Err(_) => false,
            Ok(s) => match s.as_str() {
                "Never started\n" => true,
                _ => false
            }
        };
        if !never_started {
            btrfs_status.status.code().filter(|code| *code == 0)
                .ok_or(CommandError::new("btrfs replace status", btrfs_status.status))?;
            has_started = true;
            break;
        }
        tokio::time::sleep(tokio::time::Duration::from_millis(100)).await;
    }
    if !has_started {
        return Err(InstallerError::Command(CommandError::new("btrfs replace", btrfs_replace)))
    }

    let btrfs_resize = Command::new("btrfs")
        .arg("filesystem").arg("resize").arg("1:max").arg("/")
        .spawn()?
        .wait().await?;
    btrfs_resize.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("btrfs filesystem resize", btrfs_resize))?;

    let zramctl = Command::new("zramctl")
        .arg("-r").arg("/dev/zram1")
        .spawn()?
        .wait().await?;
    zramctl.code().filter(|code| *code == 0)
        .ok_or(CommandError::new("btrfs filesystem resize", zramctl))?;

    Ok(())
}

async fn do_install(conn: &Connection, device: String, recovery_passphrase : String, oem_install : bool, has_tpm2 : bool) -> Result<(), InstallerError> {
    let logind = LogindProxy::new(&conn).await?;
    let _inihibit_fd = logind.inhibit("shutdown:sleep",
                                      "GNOME OS Installer",
                                      format!("Installing GNOME OS on {device}").as_str(),
                                      "block").await?;
    debug!("sleep inhibited");

    std::fs::create_dir_all("/run/cryptsetup-keys.d")?;
    if has_tpm2 && !oem_install {
        let mut key_file = std::fs::OpenOptions::new()
            .mode(0600)
            .write(true)
            .create(true)
            .truncate(true)
            .open("/run/cryptsetup-keys.d/root.key")?;
        key_file.write_all(recovery_passphrase.as_bytes())?;
    }
    debug!("saved encryption key");

    std::fs::create_dir_all("/run/gnomeos-pab")?;
    std::fs::OpenOptions::new()
        .write(true)
        .create(true)
        .truncate(true)
        .open(format!("/run/gnomeos-pab/{device}"))?;

    debug!("marked device for udev");

    if has_tpm2 && !oem_install {
        make_policy().await?;
    }

    debug!("made pcrlock policy");

    let repart_d = tempfile::tempdir()?;
    let repart_d_path = repart_d.path().to_str().ok_or(GenericInstallError::new("bad path FIXME"))?;

    write_repart_d(repart_d.path(), has_tpm2).await?;

    debug!("generated repart.d configuration");

    let mut cmd = Command::new("systemd-repart");

    cmd.args([
        "--dry-run=no",
        "--empty=require",
        "--json=short",
    ]);

    cmd.arg(format!("--definitions={repart_d_path}"));

    if oem_install {
        cmd.arg("--defer-partitions=root");
    } else if has_tpm2 {
        cmd.args(["--key-file=/run/cryptsetup-keys.d/root.key",
                  "--tpm2-device=auto"]);
    }

    cmd.arg(format!("/dev/{device}"));
    cmd.stdout(std::process::Stdio::piped());

    let output = cmd.spawn()?.wait_with_output().await?;

    output.status.code().filter(|code| *code == 0).ok_or(CommandError::new("systemd-repart", output.status))?;

    debug!("systemd-repart finished");

    let str_output = String::from_utf8(output.stdout)?;

    let mut partitions = std::collections::HashMap::new();
    let disks : serde_json::Value = serde_json::from_str(&str_output)?;
    for d in disks.as_array().ok_or(GenericInstallError::new("not an array"))?.iter() {
        let disk = d.as_object().ok_or(GenericInstallError::new("not an object"))?;
        let file = disk.get("file").ok_or(GenericInstallError::new("file missing"))?.as_str().ok_or(GenericInstallError::new("not a string"))?;
        let file_name = std::path::Path::new(file).file_name().ok_or(GenericInstallError::new("not a file name"))?.to_str().ok_or(GenericInstallError::new("not a file name"))?;
        let node = disk.get("node").ok_or(GenericInstallError::new("node missing"))?.as_str().ok_or(GenericInstallError::new("not a string"))?;
        partitions.insert(file_name, node);
    }

    if !oem_install {
        if has_tpm2 {
            match std::fs::remove_dir_all("/var/lib/gnomeos/install-credentials") {
                Ok(_) => (),
                Err(err) if err.kind() == std::io::ErrorKind::NotFound => (),
                Err(err) => return Err(err.into())
            }
            debug!("removed credentials");
        }

        // FIXME: We need to wait for the disk partitions to propagate, otherwise we get weird errors.
        tokio::time::sleep(tokio::time::Duration::from_millis(500)).await;

        try_join!(
            enable_efi(conn),
            swap_verity(
                partitions.get("21-usr-A.conf").ok_or(GenericInstallError::new("missing 21-usr-A.conf"))?,
                partitions.get("20-usr-verity-A.conf").ok_or(GenericInstallError::new("missing 20-usr-verity-A.conf"))?
            ),
            swap_root(
                conn,
                has_tpm2,
                partitions.get("50-root.conf").ok_or(GenericInstallError::new("missing 50-root.conf"))?,
            )
        )?;
        remove_loop().await?;
     }
    Ok(())
}

struct InstallationRecipe {
    device: String,
    recovery_passphrase : String,
    oem_install : bool,
}

struct InstallerObject {
    has_tpm2 : bool,
    installation : Option<tokio::sync::oneshot::Sender<InstallationRecipe>>,
}

impl InstallerObject {
    pub fn new(has_tpm2 : bool, installation : tokio::sync::oneshot::Sender<InstallationRecipe>) -> Self {
        Self {
            has_tpm2 : has_tpm2,
            installation : Some(installation),
        }
    }
}

#[interface(name = "org.gnome.Installer1")]
impl InstallerObject {
    async fn install(&mut self,
                     #[zbus(connection)]
                     conn: &Connection,
                     #[zbus(header)]
                     hdr: Header<'_>,
                     device: &str, oem_install: bool) -> zbus::fdo::Result<String> {
        let polkit = PolkitAuthorityProxy::new(&conn).await?;
        let mut subj_details = HashMap::new();
        subj_details.insert("name".to_string(), match hdr.sender() {
            Some(sender) => match OwnedValue::try_from(sender.to_owned()) {
                Ok(v) => v,
                Err(_) => return Err(Failed("Cannot own sender".to_string())),
            }
            None => return Err(Failed("Cannot find sender".to_string()))
        });
        let auth_result = polkit.check_authorization(
            Subject{
                subject_kind: "system-bus-name".to_string(),
                subject_details: subj_details,
            },
            "org.gnome.Installer1.InstallAuth",
            HashMap::new(),
            CheckAuthorizationFlags::AllowUserInteraction,
            ""
        ).await?;

        if !auth_result.is_authorized {
            return Err(Failed("Not allowed!".to_string()))
        }

        let recovery_passphrase : String;
        if oem_install || !self.has_tpm2 {
            recovery_passphrase = "".to_string();
        } else {
            recovery_passphrase  = rand::rng()
                .sample_iter(&Alphanumeric)
                .take(10)
                .map(char::from)
                .collect();
        }

        let mut taken : Option<tokio::sync::oneshot::Sender<InstallationRecipe>> = None;
        std::mem::swap(&mut self.installation, &mut taken);
        match taken {
            Some(ev) => match ev.send(InstallationRecipe{
                device: device.to_string(),
                recovery_passphrase: recovery_passphrase.clone(),
                oem_install : oem_install,
            }) {
                Ok(_) => (),
                Err(_) => return Err(Failed("Failed triggering installation".to_string())),
            },
            None => return Err(Failed("Installation already started".to_string())),
        };

        Ok(recovery_passphrase)
    }

    #[zbus(signal)]
    async fn installation_finished(emitter: &zbus::object_server::SignalEmitter<'_>) -> zbus::Result<()>;
    #[zbus(signal)]
    async fn installation_failed(emitter: &zbus::object_server::SignalEmitter<'_>, error : String) -> zbus::Result<()>;
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    env_logger::init();

    let systemd_analyze  = Command::new("systemd-analyze").arg("-q").arg("has-tpm2")
        .spawn()?.wait().await?;
    let systemd_analyze_exit = systemd_analyze.code()
        .filter(|code| (code & !0x7) == 0)
        .ok_or(CommandError::new("systemd-analyze", systemd_analyze))?;

    let has_tpm2 = systemd_analyze_exit == 0;

    let (tx, rx) = tokio::sync::oneshot::channel();

    let io = InstallerObject::new(has_tpm2, tx);
    let conn = connection::Builder::system()?
        .name("org.gnome.Installer1")?
        .serve_at("/org/gnome/Installer", io)?
        .build()
        .await?;

    match rx.await {
        Ok(recipe) => do_install_handle_errors(conn.object_server(), &conn, recipe.device, recipe.recovery_passphrase, recipe.oem_install, has_tpm2).await?,
        Err(err) => Err(err)?
    };

    Ok(())
}
