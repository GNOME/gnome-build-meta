kind: manual
sources:
- kind: local
  path: files/linux-pam-config
  directory: linux-pam-config
depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: build

variables:
  pamconfdir: "%{sysconfdir}/pam.d"

config:
  install-commands:
  - mkdir -p %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/other %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/system-auth %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/password-auth %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/fingerprint-auth %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/smartcard-auth %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/config-util %{install-root}%{pamconfdir}
  - install -m 644 linux-pam-config/postlogin %{install-root}%{pamconfdir}
