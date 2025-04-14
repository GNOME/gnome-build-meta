kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/47/gnome-calculator-47.2.tar.xz
  ref: 744b7bdb954ccf4fedc610ab2290b28ccc2ffba9cc454599ca5121dbff5327d0
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
