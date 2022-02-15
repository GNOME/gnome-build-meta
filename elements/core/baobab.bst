kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/42/baobab-42.beta.tar.xz
  ref: 895b5115a935d966ca268ef2acbc1877d8df64567db8d0254c2e2a7ab4671826
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
