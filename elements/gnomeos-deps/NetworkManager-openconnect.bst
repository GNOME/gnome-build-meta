kind: autotools

sources:
- kind: git_repo
  url: gnome:NetworkManager-openconnect.git
  track: '*.*'
  exclude:
  - '*dev*'
  ref: 1.2.10-0-ga28d393b5fc9e0df9c19292065187e7145e83f51
- kind: patch
  path: patches/NetworkManager-openconnect/0001-build-Require-webkitgtk-only-if-with-authdlg.patch
- kind: patch
  path: patches/NetworkManager-openconnect/link-against-openconnect.patch
- kind: local
  path: files/NetworkManager-openconnect/sysusers.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- core-deps/intltool.bst

depends:
- sdk/gtk.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openconnect.bst

variables:
  conf-local: >-
    --with-gtk4
    --without-gnome
  autogen: autoreconf -is && intltoolize --force && autoreconf -fvi

config:
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openconnect.conf"
