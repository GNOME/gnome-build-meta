kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.35/at-spi2-core-2.35.92.tar.xz
  ref: da6075080ff33d7f7984d005f2eb0a0519e3b9a840cc56e9915d45fef4fc773c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatspi.so'
