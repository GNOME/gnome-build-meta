kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.34/at-spi2-atk-2.34.1.tar.xz
build-depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
