depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-xsl.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: e88a5d05af20e497c50430b36fb523f8fda79a986359a6b7bd25910a2d2e7c0c
  url: https://download.gnome.org/sources/yelp/3.28/yelp-3.28.1.tar.xz
