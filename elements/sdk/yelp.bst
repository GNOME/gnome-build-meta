kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp/3.30/yelp-3.30.0.tar.xz
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
