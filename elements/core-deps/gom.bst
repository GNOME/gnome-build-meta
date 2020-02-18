kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.4/gom-0.4.tar.xz
  ref: ac57e34b5fe273ed306efaeabb346712c264e341502913044a782cdf8c1036d8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
