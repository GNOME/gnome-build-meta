kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/43/gnome-text-editor-43.alpha0.tar.xz
  ref: e08ef0462183ed102425f74b5e0b0432ca0ce4d946c812b2390b8507fe6b6fa0
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
