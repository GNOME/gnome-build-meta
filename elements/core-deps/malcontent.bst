kind: meson

sources:
- kind: tar
  url: tecnocode:malcontent-0.10.4.tar.xz

  ref: dec50b5892d28e1a26c475cd9eb994fe28adcac5190c504d1f797c8e9ad2f534
build-depends:
- core-deps/glib-testing.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/flatpak.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
