kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/42/gsettings-desktop-schemas-42.alpha.tar.xz
  ref: 78eea7dd1f8e03dbef2bf70f9d4cb88b3feacaf33b198f388a375329434a1d21
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
