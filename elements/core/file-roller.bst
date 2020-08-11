kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.37/file-roller-3.37.90.tar.xz
  ref: d784b9b315ba9386235e6de6e262aed14ac89bc0e6ef3a848dd3b0f29373c3a1
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
