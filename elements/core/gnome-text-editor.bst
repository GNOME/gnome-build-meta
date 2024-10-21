kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/47/gnome-text-editor-47.1.tar.xz
  ref: de95642e2b40ff265feecd86b939e0fd018e4eb2ba499350f2bad2bfcc54010c
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
