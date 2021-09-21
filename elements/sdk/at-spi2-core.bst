kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.42/at-spi2-core-2.42.0.tar.xz
  ref: 4b5da10e94fa3c6195f95222438f63a0234b99ef9df772c7640e82baeaa6e386
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
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
