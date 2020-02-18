kind: meson
sources:
- kind: tar
  url: gnome_downloads:gedit/3.34/gedit-3.34.1.tar.xz
  ref: ebf9ef4e19831699d26bb93ce029edfed65416d7c11147835fc370d73428d5c6
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
