kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.45/at-spi2-core-2.45.1.tar.xz
  ref: ba95f346e93108fbb3462c62437081d582154db279b4052dedc52a706828b192
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/libxml2.bst
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
        - '%{libdir}/libatk-1.0.so'
        - '%{libdir}/libatk-bridge-2.0.so'
        - '%{libdir}/libatspi.so'
