kind: meson

sources:
- kind: tar
  url: gnome_downloads:gedit/3.38/gedit-3.38.2.tar.xz
  ref: 0e3573508add1777f06c05a66c3fe6fba97694d66cb577b98dbe0166a222c62d
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/amtk.bst
- core-deps/gspell.bst
- core-deps/libpeas.bst
- core-deps/tepl.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtksourceview.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
