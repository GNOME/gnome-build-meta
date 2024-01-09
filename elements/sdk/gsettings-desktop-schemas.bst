kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/46/gsettings-desktop-schemas-46.alpha.tar.xz
  ref: 7588653b2afd07eb7dd11a0f0fa939b0a78d6b9fa8defcb7e41fcf6668a8d37e
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
