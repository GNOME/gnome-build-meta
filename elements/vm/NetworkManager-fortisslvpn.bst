kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager-fortisslvpn/1.2/NetworkManager-fortisslvpn-1.2.8.tar.xz
  ref: 9cb8e5df0bc0ecc2ab4bfbf022df463bfc1ea01c06617a0be87fdbd9d26efb05
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
