kind: meson

sources:
- kind: tar
  url: tecnocode:malcontent/malcontent-0.12.0.tar.xz
  ref: 8fe59e081a6cad3a15c1fa839d8c7126e32bb3a17a4b7b48e0b8c253ab6c6d41
build-depends:
- core-deps/glib-testing.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- sdk/pygobject.bst
