kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openconnect/1.2/NetworkManager-openconnect-1.2.10.tar.xz
  ref: 844b6bf64ecadb97b4a68c776db89aa5e6ee7e59bd24b0180228406863136464
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

config:
  configure-commands:
    (<):
    # force autogen
    - rm configure
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openconnect.conf"
