kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/42/baobab-42.rc.tar.xz
  ref: 6541a3150046f1f708718396281b76aa99b336a21cca709eff13c69359252435
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
