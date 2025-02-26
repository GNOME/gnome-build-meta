kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-vpnc/1.4/NetworkManager-vpnc-1.4.0.tar.xz
  ref: e3b2a98880275a1b75154bc317a78643cfdf9ea7e70df4eed9648f29ea253730

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
