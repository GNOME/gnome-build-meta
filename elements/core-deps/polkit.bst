kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/polkit/releases/polkit-0.116.tar.gz
- kind: local
  path: files/polkit/sysusers.conf
  directory: data
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gobject-introspection.bst
- core-deps/mozjs60.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-libsystemd-login=yes
config:
  install-commands:
    (>):
    - |
      SYSUSERSDIR=$(pkg-config --variable sysusersdir systemd)
      install -D -m 644 data/sysusers.conf %{install-root}/$SYSUSERSDIR/polkit.conf
