kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calculator/40/gnome-calculator-40.rc.tar.xz
  ref: c2dca69f7489351c4bdc66b6d17634c265eca25739f3ea0b7bf9e35ccead4e44
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
