kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/47/baobab-47.alpha.tar.xz
  ref: d36715445809ea11a2ad2970cea80b35d9d1a7271f08049654279b474821451c
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
