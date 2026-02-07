kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/50/gnome-calculator-50.beta.tar.xz
  ref: dd1413c3aa3ce8d49c5cf93ccdcf0df19fb479f75a0a2b9d375aa41af5d8ed38
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
