kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.32/file-roller-3.32.5.tar.xz
  ref: d53d30b4b45f61158b7e550b71a8a5556e877695f43a2ceb88be895960e54176
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
