depends:
- core-deps/exempi.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 37aeddfbf440751fce23bfae491184e3b5c618ebf9d56f491bac37896ada48d2
  url: https://download.gnome.org/sources/eog/3.28/eog-3.28.3.tar.xz
