kind: meson

sources:
- kind: tar
  url: gnome_downloads:gedit/3.37/gedit-3.37.2.tar.xz
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
