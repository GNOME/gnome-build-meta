kind: manual

depends:
- filename: freedesktop-sdk.bst:components/systemd.bst

variables:
  journald-config: "%{install-root}%{indep-libdir}/systemd/journald.conf.d"
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p "%{journald-config}"
    install -m 644 -t "%{journald-config}" 90-persistent-journal.conf
  - |
    %{install-extra}

sources:
- kind: local
  path: files/journald/90-persistent-journal.conf
