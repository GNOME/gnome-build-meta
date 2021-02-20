kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/40/baobab-40.beta.tar.xz
  ref: d0218537d649c03d0528ead1ce2a9d3125ace98aa79867419f4b6657c6e4b3f3
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
