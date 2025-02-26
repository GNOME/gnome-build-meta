kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openconnect/1.2/NetworkManager-openconnect-1.2.10.tar.xz
  ref: 844b6bf64ecadb97b4a68c776db89aa5e6ee7e59bd24b0180228406863136464
- kind: local
  path: files/NetworkManager-openconnect/sysusers.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- core-deps/intltool.bst

depends:
- sdk/gcr.bst
- sdk/gtk.bst
- sdk/webkit2gtk-4.1.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openconnect.bst

variables:
  conf-local: >-
    --with-gtk4

config:
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openconnect.conf"
