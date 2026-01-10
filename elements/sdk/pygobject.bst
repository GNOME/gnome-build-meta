kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.55/pygobject-3.55.1.tar.gz
  ref: 1558d013f7d4c4f9dc47a7245b1dc6a8e91ea1d43ce67959aef4f7331a586eff
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
