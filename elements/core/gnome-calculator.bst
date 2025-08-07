kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/49/gnome-calculator-49.beta.tar.xz
  ref: 1205c6c06180b027253939f2f10d72f52e89ce1f85ce940cdca266e75d094428
build-depends:
- sdk/blueprint-compiler.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
