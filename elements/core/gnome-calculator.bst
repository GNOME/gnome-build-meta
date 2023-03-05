kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/44/gnome-calculator-44.rc.tar.xz
  ref: 70112132dd040539b5c4d9e9d9b97f1506629a45d4119e0a492fd0a85c221618

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
