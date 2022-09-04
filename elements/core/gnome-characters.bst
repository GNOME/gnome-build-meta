kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/43/gnome-characters-43.rc.tar.xz
  ref: 9066e40fedbd97a705d65b7ea6c3c25b8fb0e98ea69dd23ecb5dd12e31a60a3f
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
