kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.35/gsettings-desktop-schemas-3.35.91.tar.xz
  ref: 37993f1e40ceb9a2e321ec0f0d1d7128c014528dce3b1452ff140d03b54c2588
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
