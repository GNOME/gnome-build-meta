kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.35/file-roller-3.35.91.tar.xz
  ref: 8a7d06f65e827d8b191d9f32917438343a917c881c7e1f5cb5aa7c59e8224ca6
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
