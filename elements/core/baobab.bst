kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/3.37/baobab-3.37.90.tar.xz
  ref: 41be38e43faafb392769c879e1e762ca38e2d751c171bea1f9047290a883fefe
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
