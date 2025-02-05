kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/48/gnome-calculator-48.beta.tar.xz
  ref: a1ef9654a07501aaae094601c6def258152e17e0c0d91a316ca6cfabb9f2e274
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
