kind: meson

sources:
- kind: tar
  url: freedesktop_files:pwithnall/malcontent/-/archive/0.11.0/malcontent-0.11.0.tar.gz

  ref: dec50b5892d28e1a26c475cd9eb994fe28adcac5190c504d1f797c8e9ad2f534
build-depends:
- core-deps/glib-testing.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/AppStream.bst
- core-deps/accountsservice.bst
- core-deps/flatpak.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- sdk/pygobject.bst
