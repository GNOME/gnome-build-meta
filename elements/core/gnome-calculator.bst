kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/43/gnome-calculator-43.0.1.tar.xz
  ref: 02c12ded3cf5053d17537d95ec69587f4b919899d7726eceecdb4b47ffb1c90f
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
