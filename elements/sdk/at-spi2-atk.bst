kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.38/at-spi2-atk-2.38.0.tar.xz
  ref: cfa008a5af822b36ae6287f18182c40c91dd699c55faa38605881ed175ca464f
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
