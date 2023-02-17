kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/44/gnome-calculator-44.beta.tar.xz
  ref: 5c84bdf399c563c0cd4298c07fb84b7c04ebb56e1964bf99c7a2fdd27db4f740
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
