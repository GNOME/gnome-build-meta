kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/47/gsettings-desktop-schemas-47.alpha.tar.xz
  ref: 314f305c57e57e7d96ea25d13eebd77a35e9119e0a0d82fb3c33fa76e6580742
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
