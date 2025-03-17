kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.52/pygobject-3.52.3.tar.gz
  ref: 00e427d291e957462a8fad659a9f9c8be776ff82a8b76bdf402f1eaeec086d82
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
