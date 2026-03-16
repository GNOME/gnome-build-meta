kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/50/baobab-50.0.tar.xz
  ref: 573c84f15f5f963a440500f6f43412c928ac2335f6b69dcb58f1a1fe5201024b
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
