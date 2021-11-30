kind: autotools

sources:
- kind: tar
  url: tar_download_gnome_org:/sources/NetworkManager-vpnc/1.2/NetworkManager-vpnc-1.2.6.tar.xz

variables:
  conf-local: >-
    --without-libnm-glib

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst

runtime-depends:
- vm/vpnc.bst
