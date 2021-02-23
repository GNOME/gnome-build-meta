kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.39/at-spi2-core-2.39.90.1.tar.xz
  ref: 2e8a9098e64dc66478ca095d3ca91657626eb778dc75e64bff6294be7ceaa4ba
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
