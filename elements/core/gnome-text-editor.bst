kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/49/gnome-text-editor-49.1.tar.xz
  ref: f0448f247bb5979a50c60222c44c4511880ad474e25495765e5ed2246e54dbb1
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
