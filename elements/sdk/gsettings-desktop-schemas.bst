kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/48/gsettings-desktop-schemas-48.beta.tar.xz
  ref: 531dc41bb5cb5ad3b51f1b9510bd5671801528e10b60a6073df6b446d2648d29
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
