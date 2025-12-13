kind: autotools

sources:
- kind: git_repo
  url: gnome:NetworkManager-openconnect.git
  track: '*.*'
  exclude:
  - '*dev*'
  ref: 1.2.10-0-ga28d393b5fc9e0df9c19292065187e7145e83f51
- kind: patch_queue
  path: patches/NetworkManager-openconnect
- kind: local
  path: files/NetworkManager-openconnect/sysusers.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- core-deps/intltool.bst

depends:
- sdk/gtk.bst
- sdk/webkitgtk-6.0.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openconnect.bst

variables:
  conf-local: >-
    --with-gtk4
  autogen: autoreconf -is && intltoolize --force && autoreconf -fvi

config:
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openconnect.conf"
