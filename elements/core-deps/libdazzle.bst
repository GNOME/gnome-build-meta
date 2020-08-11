kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.37/libdazzle-3.37.1.tar.xz
  ref: fdf0e398069848b90fddf3184b6384592a3aeabb8b2433140e03b0164266250f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
