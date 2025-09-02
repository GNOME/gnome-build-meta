kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/49/gnome-calculator-49.rc.tar.xz
  ref: 0baccb61509f73f2a9f8c89450dcf2c3201d72f5d68d693bee519945d81ea380
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
