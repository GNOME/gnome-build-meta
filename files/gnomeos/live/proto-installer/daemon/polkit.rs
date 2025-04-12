use zbus::{proxy, zvariant::Type, zvariant::OwnedValue};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;

#[derive(Type, Debug, PartialEq, Eq, Copy, Clone, Serialize, Deserialize)]
#[repr(u32)]
pub enum CheckAuthorizationFlags {
    None = 0,
    AllowUserInteraction = 1,
}

#[derive(Debug, Type, Serialize, Deserialize)]
pub struct Subject {
    pub subject_kind: String,
    pub subject_details: HashMap<String, OwnedValue>,
}

#[derive(Debug, Type, Serialize, Deserialize)]
pub struct AuthorizationResult {
    pub is_authorized : bool,
    pub is_challenge : bool,
    pub details : HashMap<String, String>,
}

#[proxy(
    interface = "org.freedesktop.PolicyKit1.Authority",
    default_service = "org.freedesktop.PolicyKit1",
    default_path = "/org/freedesktop/PolicyKit1/Authority"
)]
pub trait PolkitAuthority {
    async fn check_authorization(&self, subject : Subject, action_id: &str, details : HashMap<&str, &str>, flags : CheckAuthorizationFlags, cancellation_id : &str) -> zbus::Result<AuthorizationResult>;
}
