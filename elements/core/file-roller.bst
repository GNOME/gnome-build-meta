kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.36/file-roller-3.36.2.tar.xz
  ref: 268f7fdad8d2a78dfed5e82eb8710bad389c311b720666d6f07a04ed51056bd2
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
