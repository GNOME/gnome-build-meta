kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.34/at-spi2-atk-2.34.1.tar.xz
  ref: 776df930748fde71c128be6c366a987b98b6ee66d508ed9c8db2355bf4b9cc16
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
