kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.51/pygobject-3.51.0.tar.xz
  ref: 5d8ec64b034a29a14c3739541436a07ea0de83c8a394c6e5ecaa9e2e5b7b4e72
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
