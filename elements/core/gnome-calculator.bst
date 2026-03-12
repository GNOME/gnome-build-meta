kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/50/gnome-calculator-50.rc.tar.xz
  ref: 270df2f55b5757194d9fd1e2d980d2084d0745ea9614ebc12cd60bcc9e30ca61
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
