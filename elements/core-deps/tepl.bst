kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/5.0/tepl-5.0.0.tar.xz
  ref: c6bd2904f53048b7d0149236610b38f502f2634d395d8b9b3c659553f4045a74
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst
depends:
- core-deps/amtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
