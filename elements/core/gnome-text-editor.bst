kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/48/gnome-text-editor-48.beta.tar.xz
  ref: fce933262019a49658e47bd76f59b0e05a40c37570280378308cf8103dc96bf3
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
