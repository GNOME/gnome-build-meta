kind: meson
sources:
- kind: tar
  url: gnome_downloads:gedit/3.36/gedit-3.36.1.tar.xz
  ref: 6dc38eda227d1c368e039e9bff485d0bee9a49d5f9560c387ee08f5818a4e387
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
