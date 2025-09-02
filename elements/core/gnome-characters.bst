kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/49/gnome-characters-49.rc.tar.xz
  ref: 84f3961352a42340e5678a108a0f03e85b3b610440e5d5422fc58db9c28fc043
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
