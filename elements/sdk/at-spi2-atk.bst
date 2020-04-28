kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.34/at-spi2-atk-2.34.2.tar.xz
  ref: 901323cee0eef05c01ec4dee06c701aeeca81a314a7d60216fa363005e27f4f0
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
