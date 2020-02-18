kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/3.35/gsettings-desktop-schemas-3.35.91.tar.xz
  ref: 288b04260f7040b0e004a8d59c773cfb4e32df4f1b4a0f9d705c51afccc95ead
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
