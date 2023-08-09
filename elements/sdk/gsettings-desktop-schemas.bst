kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/45/gsettings-desktop-schemas-45.beta.tar.xz
  ref: 82c6d1a23c12ed37893b3bf3dfc4733f9357f30598dc4113a6801306f9aded4d
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
