kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/48/gnome-text-editor-48.3.tar.xz
  ref: 3f9e9722394edb4d2145c06d69210b3d3fca5cd2b90d632643be750843d556ba
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/editorconfig-core-c.bst
- core-deps/libspelling.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
