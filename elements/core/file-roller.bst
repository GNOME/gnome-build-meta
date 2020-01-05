kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.35/file-roller-3.35.1.tar.xz
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
