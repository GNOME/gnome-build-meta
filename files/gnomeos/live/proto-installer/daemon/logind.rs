use zbus::{proxy};

#[proxy(
    interface = "org.freedesktop.login1.Manager",
    default_service = "org.freedesktop.login1",
    default_path = "/org/freedesktop/login1"
)]
pub trait Logind {
    async fn inhibit(&self, what : &str, who : &str, why : &str, mode : &str) -> zbus::Result<zbus::zvariant::OwnedFd>;
}
