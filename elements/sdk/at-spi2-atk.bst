kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.37/at-spi2-atk-2.37.90.tar.xz
  ref: 99847a3b61bf2ac98a47e47edb4de4ea5c4f326c8238ad10661bd6d9c46b48f0
build-depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatk-bridge-2.0.so'
