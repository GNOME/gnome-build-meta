kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/46/gnome-calculator-46.rc.tar.xz
  ref: bde53af955b7b26db51c8a69049c1d9bbf511cd5f3a7471258ac0502428f7d76
build-depends:
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
