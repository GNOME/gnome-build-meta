kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/48/gnome-text-editor-48.1.tar.xz
  ref: 52089ba978a665841803b1b69e0e7be75b09a7d54e01e8d0bb29926e0f342437
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
