kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/47/gsettings-desktop-schemas-47.1.tar.xz
  ref: a60204d9c9c0a1b264d6d0d134a38340ba5fc6076a34b84da945d8bfcc7a2815
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
