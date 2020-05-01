kind: meson
sources:
- kind: tar
  url: gnome_downloads:gedit/3.36/gedit-3.36.2.tar.xz
  ref: 6887554643c5b1b3862ac364d97b7b50224bff95e6758aeaa08f4a482b554197
build-depends:
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
