kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/40/gsettings-desktop-schemas-40.alpha.tar.xz
  ref: 49ea007da6b486e4798f5e80249cb23be478799d9efe6bf8abf92f39609f0a07
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
