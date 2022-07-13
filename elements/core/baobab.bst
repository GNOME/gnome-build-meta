kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/43/baobab-43.alpha.tar.xz
  ref: e9ca3ffed6216ada163fcc79638dfeaafc3be513d65821fcf9e29e2f39f402ab
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
