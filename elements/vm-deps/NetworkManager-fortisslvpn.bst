kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-fortisslvpn/1.3/NetworkManager-fortisslvpn-1.3.90.tar.xz
  ref: 884a7432bb38ae9c942e094f23d0a3feb504432153c3d2869ab71a4dd244d0fb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- vm-deps/openfortivpn.bst

variables:
  conf-local: >-
    --without-libnm-glib
