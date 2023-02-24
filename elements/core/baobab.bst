kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/44/baobab-44.beta.tar.xz
  ref: a75d9ecbb1790d33e83ac121334d1e3913287b24a364e877d9041840a907ae91

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
