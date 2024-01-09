kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/46/gnome-calculator-46.alpha.tar.xz
  ref: 3a211b1b7e7a20c634fee952f2e265f11f5a37990ca64cd02d4142cd8560d68d
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
