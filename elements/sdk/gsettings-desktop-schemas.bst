kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/40/gsettings-desktop-schemas-40.0.tar.xz
  ref: f1b83bf023c0261eacd0ed36066b76f4a520bbcb14bb69c402b7959257125685
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
