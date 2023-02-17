kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/44/gsettings-desktop-schemas-44.beta.tar.xz
  ref: 164ee076f42930833708678eb3181d06fe2efccbf944da911cc80881c3f12ad4
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
