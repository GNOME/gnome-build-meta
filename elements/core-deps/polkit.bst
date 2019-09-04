kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/polkit/releases/polkit-0.116.tar.gz
- kind: local
  path: files/polkit/sysusers.conf
  directory: data
depends:
- filename: core-deps/intltool.bst
  type: build
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/mozjs60.bst
- filename: components/linux-pam.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-libsystemd-login=yes
config:
  install-commands:
    (>):
    - |
      SYSUSERSDIR=$(pkg-config --variable sysusersdir systemd)
      install -D -m 644 data/sysusers.conf %{install-root}/$SYSUSERSDIR/polkit.conf
