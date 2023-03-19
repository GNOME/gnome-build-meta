kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/44/gnome-calculator-44.0.tar.xz
  ref: 14e763329f88309a7e152780d57361b543100e323906b34e0655fdc315b71043

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
