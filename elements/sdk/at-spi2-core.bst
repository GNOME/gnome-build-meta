kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.40/at-spi2-core-2.40.0.tar.xz
  ref: 4196a7d30a0051e52a67b8ce4283fe79ae5e4e14a725719934565adf1d333429
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
