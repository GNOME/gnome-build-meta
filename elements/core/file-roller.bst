kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.36/file-roller-3.36.1.tar.xz
  ref: 70a5e551dd07c299df03fcda00c2251c5d1d3e239f3ed711b8bbaaa75897425c
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
