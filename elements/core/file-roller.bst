kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.36/file-roller-3.36.0.tar.xz
  ref: b9144de8f536f583ec29d703c2c170bf2d00c6c166cd5e3f7efabda551f10478
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
