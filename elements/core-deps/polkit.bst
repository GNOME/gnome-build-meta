config:
  install-commands:
    (>):
    - |
      SYSUSERSDIR=$(pkg-config --variable sysusersdir systemd)
      install -D -m 644 data/sysusers.conf %{install-root}/$SYSUSERSDIR/polkit.conf
depends:
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/mozjs52.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 2f87ecdabfbd415c6306673ceadc59846f059b18ef2fce42bac63fe283f12131
  url: https://www.freedesktop.org/software/polkit/releases/polkit-0.115.tar.gz
- directory: data
  kind: local
  path: files/polkit/sysusers.conf
variables:
  conf-local: --enable-libsystemd-login=yes
