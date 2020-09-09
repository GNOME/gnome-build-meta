kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/3.37/gnome-calculator-3.37.92.tar.xz
  ref: fd96e85c536967d9f18103d13cc23cf8ed8eff4064ab094c3be27e6cca082729
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/libgee.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
