kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnotify/0.8/libnotify-0.8.3.tar.xz
  ref: ee8f3ef946156ad3406fdf45feedbdcd932dbd211ab4f16f75eba4f36fb2f6c0
build-depends:
- sdk/gobject-introspection.bst
- sdk/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocbook_docs=disabled
    -Dman=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'
