kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.50.0-107-g2c3462a5747ed10751499f929bfacb06ee56f44f
# FIXME: Keep this in sync with the repo until we can use wraps as sources
#
# https://gitlab.gnome.org/GNOME/pygobject/-/blob/main/subprojects/gobject-introspection-tests.wrap
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
