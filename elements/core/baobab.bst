kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/45/baobab-45.0.tar.xz
  ref: a7d2cf308a6c839ee0b0bf074f8f5fd60d62ae2f064a94b3c610d6560b758e86
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
