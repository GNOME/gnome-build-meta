kind: meson
sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/40/gsettings-desktop-schemas-40.beta.tar.xz
  ref: 221fd7f771ca23d8e5d9de0a365e3caa87b3c7cb19a5be9e483f6373d871ed2d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
