use zbus;
use zbus::proxy;

#[proxy(
    interface = "org.freedesktop.systemd1.Job",
    default_service = "org.freedesktop.systemd1",
)]
pub trait SystemdJob {
}

#[proxy(
    interface = "org.freedesktop.systemd1.Unit",
    default_service = "org.freedesktop.systemd1",
)]
pub trait SystemdUnit {
    #[zbus(property)]
    fn active_state(&self) -> zbus::Result<String>;
}

#[proxy(
    interface = "org.freedesktop.systemd1.Manager",
    default_service = "org.freedesktop.systemd1",
    default_path = "/org/freedesktop/systemd1"
)]
pub trait Systemd {
    #[zbus(object="SystemdJob")]
    async fn start_unit(&self, name : &str, mode : &str) -> zbus::Result<SystemdJobProxy>;
    #[zbus(object="SystemdUnit")]
    async fn get_unit(&self, name : &str) -> zbus::Result<SystemdUnitProxy>;
    #[zbus(object="SystemdUnit")]
    async fn load_unit(&self, name : &str) -> zbus::Result<SystemdUnitProxy>;
}
