kind: meson

sources:
- kind: tar
  url: gnome_downloads:gedit/41/gedit-41.1.tar.xz
  ref: 88decb386c06077cc4a14c1bb136edf3faa6f5201508185208b32e80f246ddde
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gspell.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtksourceview-4.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
