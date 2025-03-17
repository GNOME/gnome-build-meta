kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/48/gnome-calculator-48.0.tar.xz
  ref: 07b627136bbfddb6142b324acc30440911f77f5137009103276a2d35ffd39510
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
