kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.4/libspelling-0.4.9.tar.xz
  ref: d093fd35ae0f1c98fb58876505287fc0a885e47da9d2411d6d7cd595f34d4ebf
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
