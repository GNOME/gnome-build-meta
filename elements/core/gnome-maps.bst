kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/42/gnome-maps-42.2.tar.xz
  ref: 5e6d1b0ca7cc939ea91aadfda5633a865ea85fa5650036861b2bfef0bfd069b1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gtk.bst
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gfbgraph.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
