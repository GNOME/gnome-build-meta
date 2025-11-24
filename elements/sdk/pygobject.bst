kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.52/pygobject-3.52.4.tar.gz
  ref: 5947250b27d8e5f4797e8e0ed801dcd1512a9433d5637a0b36065a850b3a5c5c
- kind: git_repo
  url: gnome:gobject-introspection-tests.git
  directory: subprojects/gobject-introspection-tests
  ref: ca387326e2161b4608190417c26e45931e00b265

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
