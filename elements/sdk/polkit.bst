kind: autotools
sources:
- kind: git
  url: https://anongit.freedesktop.org/git/polkit.git
  track: master
- kind: local
  path: files/polkit/sysusers.conf
  directory: data
depends:
- sdk/mozjs52.bst
- sdk/pam.bst
- base.bst
variables:
  conf-local:
    --enable-libsystemd-login=yes
config:
  install-commands:
    (>):
    - |
      SYSUSERSDIR=$(pkg-config --variable sysusersdir systemd)
      install -D -m 644 data/sysusers.conf %{install-root}/$SYSUSERSDIR/polkit.conf
