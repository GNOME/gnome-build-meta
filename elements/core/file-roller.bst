kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.35/file-roller-3.35.90.tar.xz
  ref: 165c32391d213b76579abd4d59a890218d7c8ef8e67f32898e9263c40bf2b620
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
