kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.32/file-roller-3.32.4.tar.xz
  ref: 1b3b2cbfcb444e0d150bfd063add9d5181c8ab24f0593e5a8894399297214017
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
