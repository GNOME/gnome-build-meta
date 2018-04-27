kind: meson
sources:
- kind: git
  url: git_gnome_org:eog
  track: master
depends:
- core-deps/exempi.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- core-deps/libpeas.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
