kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/49/gnome-characters-49.1.tar.xz
  ref: 795c0fe434e602dc783391fb5830dbc7d8e1ea05ca77210fb140e2f6f40a145c
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
