kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.38/file-roller-3.38.0.tar.xz
  ref: 723d1c6e567d35dad5eeeaeb86b8d18705658ee73e0b3b97ea16adc7a4dc331a
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
