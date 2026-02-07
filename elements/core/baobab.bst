kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/49/baobab-49.1.tar.xz
  ref: 6243c92002be7e91f5decd249612face2a4a12d3742afd88b086a94b875dffe0
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
