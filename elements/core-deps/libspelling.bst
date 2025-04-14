kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.4/libspelling-0.4.7.tar.xz
  ref: 42f130f295f5addb6e9e8e74ccfbb709794bd2dfd021293e2875b9481bbd4e88

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
