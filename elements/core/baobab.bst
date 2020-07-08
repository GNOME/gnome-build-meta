kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/3.34/baobab-3.34.1.tar.xz
  ref: 7f981d4f135e4f80fba3f66e86b0eeedc94a2434649262ff01a5f0cb027b20c5
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
