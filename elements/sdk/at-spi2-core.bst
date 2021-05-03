kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.40/at-spi2-core-2.40.1.tar.xz
  ref: 9f66e3a4ee42db897af478a826b1366d7011a6d55ddb7e9d4bfeb3300ab23856
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
