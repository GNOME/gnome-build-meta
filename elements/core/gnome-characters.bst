kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/48/gnome-characters-48.alpha.tar.xz
  ref: daed76afae69a0fdc4153db1534cca8803e166282c9376432b37318ee297b9f6
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
