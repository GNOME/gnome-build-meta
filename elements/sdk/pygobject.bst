kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.40/pygobject-3.40.1.tar.xz
  ref: 00c6d591f4cb40c335ab1fd3e8c17869ba15cfda54416fe363290af766790035
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
