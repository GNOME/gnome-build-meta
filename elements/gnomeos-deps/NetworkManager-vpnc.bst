kind: autotools

sources:
- kind: git_repo
  url: gnome:NetworkManager-vpnc.git
  track: '*.*'
  exclude:
  - '*dev*'
  ref: 1.4.0-0-ge915b09ed53edda9536858cab9a67ec491c2e2f2

variables:
  conf-local: >-
    --without-libnm-glib
    --with-gtk4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst

runtime-depends:
- gnomeos-deps/vpnc.bst
