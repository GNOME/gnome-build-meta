kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/3.32/gnome-characters-3.32.1.tar.xz
  ref: 5a9225ad527f9e185d3f1beb84e358a6571578aaeb75f47c4e07cdd48b08efd6
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
