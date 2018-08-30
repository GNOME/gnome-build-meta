kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp/3.28/yelp-3.28.1.tar.xz
  ref: e88a5d05af20e497c50430b36fb523f8fda79a986359a6b7bd25910a2d2e7c0c
depends:
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
