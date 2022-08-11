kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/43/gnome-calculator-43.alpha.tar.xz
  ref: 494018ca0f25250e79a5b235ad4c7e3eaf3c473815e6a1a2d6d4aa256d45e8b1
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
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
