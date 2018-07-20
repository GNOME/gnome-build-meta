kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gmime/3.2/gmime-3.2.0.tar.xz
  ref: 75ec6033f9192488ff37745792c107b3d0ab0a36c2d3e4f732901a771755d7e0
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
