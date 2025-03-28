kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/46/gnome-calculator-46.2.tar.xz
  ref: d631bf43838b259d0c21f70dd4cb5b8fb7782a024f464a334f9d3cf1dc137b4b
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
