kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.54.0-42-gd00ad09688e9dcc42020949e276741d3ae58c10d
# FIXME: Keep this in sync with the repo until we can use wraps as sources
#
# https://gitlab.gnome.org/GNOME/pygobject/-/blob/main/subprojects/gobject-introspection-tests.wrap
- kind: git_repo
  url: gnome:gobject-introspection-tests.git
  directory: subprojects/gobject-introspection-tests
  ref: ddd662bb9cdc29f047b239789fb7e56e68fa66bb
# FIXME: Keep this (plus the patching below) in sync with the repo until we can use wraps as sources
#
# https://gitlab.gnome.org/GNOME/pygobject/-/blob/main/subprojects/pythoncapi-compat.wrap
- kind: git_repo
  url: github:python/pythoncapi-compat.git
  directory: subprojects/pythoncapi-compat
  ref: 22811c3f0e69908894d2bd724f572b32667f2141

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
