kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gom/0.3/gom-0.3.3.tar.xz
  ref: ac57e34b5fe273ed306efaeabb346712c264e341502913044a782cdf8c1036d8
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
