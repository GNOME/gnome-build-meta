kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/3.34/gnome-characters-3.34.0.tar.xz
  ref: 5a9225ad527f9e185d3f1beb84e358a6571578aaeb75f47c4e07cdd48b08efd6
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
