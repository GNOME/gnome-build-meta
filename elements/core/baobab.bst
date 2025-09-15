kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/49/baobab-49.0.tar.xz
  ref: 195c0182dc4d7f694dd0b4ee36e72e0f4ab757825fc238233409eec2df483fae
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
