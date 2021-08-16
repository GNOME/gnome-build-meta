kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.1/gtksourceview-5.1.0.tar.xz
  ref: 1f3f5bbe75d8471add16e58d21d0df9b6fe985dd40461ac89adc04a66ed43680
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
