kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.11.tar.xz
  ref: dd5682ec68220339e11c5159b7e012204a318dd1b3683a09c482ca421ab07375
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
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
