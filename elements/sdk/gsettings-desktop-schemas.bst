kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.37/gsettings-desktop-schemas-3.37.92.tar.xz
  ref: af2ef2c8573b59e6a4e4b912d7454a91860c6ef392d1bea5e08f4d713a7ef104
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
