kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.39/at-spi2-core-2.39.1.tar.xz
  ref: 44d2b042e47d25571581efff673af0a8cd79531babbad2b043784879e15e4228
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dx11=yes
    -Dintrospection=yes
    -Ddocs=true
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatspi.so'
