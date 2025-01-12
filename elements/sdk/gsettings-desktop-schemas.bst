kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/48/gsettings-desktop-schemas-48.alpha.tar.xz
  ref: 554feb98da64705a03a21bde844e55a08d634e5fd1e4884a4de5b71de6267f91
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
