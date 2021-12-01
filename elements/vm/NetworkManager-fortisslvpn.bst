kind: autotools

sources:
- kind: tar
  url: tar_download_gnome_org:sources/NetworkManager-fortisslvpn/1.2/NetworkManager-fortisslvpn-1.2.8.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- vm/openfortivpn.bst

variables:
  conf-local: >-
    --without-libnm-glib
