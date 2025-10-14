kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/49/gsettings-desktop-schemas-49.1.tar.xz
  ref: 777a7f83d5e5a8076b9bf809cb24101b1b1ba9c230235e3c3de8e13968ed0e63
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
