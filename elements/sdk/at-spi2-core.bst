kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.39/at-spi2-core-2.39.91.tar.xz
  ref: 4f71d3d208736adfe004102b4caca0ad70a7e3986d9bcd1661d7d824e10bbfb3
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
