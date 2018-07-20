kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgee/0.20/libgee-0.20.1.tar.xz
  ref: bb2802d29a518e8c6d2992884691f06ccfcc25792a5686178575c7111fea4630
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
