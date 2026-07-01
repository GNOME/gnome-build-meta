kind: meson

sources:
- kind: tar
  url: gnome_downloads:gspell/1.14/gspell-1.14.4.tar.xz
  ref: e73a89d68c70f8748aefb6b0f5cfdfec3ff173cf4449837fd6cb17d1e9fcf486
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
