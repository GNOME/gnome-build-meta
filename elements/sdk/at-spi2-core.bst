kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.43/at-spi2-core-2.43.92.tar.xz
  ref: 8d74ee12784eb42537e2fd6c1964ff27ec571e1eb087d63c17cc4371ecae8723
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
