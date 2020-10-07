kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.38/gnome-calculator-3.38.1.tar.xz
  ref: 7cffffd07f7a463d65d30a3d67e1cf774a76cfe1f80194aae7168d21687b5249
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
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
