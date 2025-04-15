kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/48/gnome-text-editor-48.2.tar.xz
  ref: fc1f5d475bdd27d4c0439a5b8fe10d6e401b42f1dba3d04b7567839036ee202b
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
