kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.40/file-roller-3.40.0.tar.xz
  ref: 4a2886a3966200fb0a9cbba4e2b79f8dad9d26556498aacdaed71775590b3c0d
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
