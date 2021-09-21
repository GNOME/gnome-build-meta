kind: meson

sources:
- kind: tar
  url: gnome_downloads:gedit/41/gedit-41.alpha.tar.xz
  ref: 4e445d7d2b5c0b088d32cce9dbd17d5507b3362adf6fa985c975282323233f3a
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
