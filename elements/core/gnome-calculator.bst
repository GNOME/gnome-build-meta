kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/41/gnome-calculator-41.rc.tar.xz
  ref: 64f87cd94c8edc9102bd76fb91bb0c5397bdb8dd714c01aa73a428d6fe4381ca
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
