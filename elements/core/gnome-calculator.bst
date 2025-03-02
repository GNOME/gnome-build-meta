kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/48/gnome-calculator-48.rc.tar.xz
  ref: 3f543322657fca194a600f3e0291432c6b3384bec38707d978056d0a44103673
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
