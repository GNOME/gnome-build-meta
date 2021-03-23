kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/40/gnome-calculator-40.0.tar.xz
  ref: f3a25988be1170eb9072d8bb3dc46192136fcb0be80182e17bb34618326c4de3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
