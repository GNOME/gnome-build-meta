kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp/3.30/yelp-3.30.0.tar.xz
  ref: 647fb00a592e92c95815d59e86016339ef1bd1a0aea309bd3367962005480a18
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
