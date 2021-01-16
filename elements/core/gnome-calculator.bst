kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/40/gnome-calculator-40.alpha.tar.xz
  ref: e8282aad050b6c358e412b769535b32e152371b1f09afb10df5afd92da8b6f17
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
- sdk/libhandy.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
