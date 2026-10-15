kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.58/pygobject-3.58.1.tar.gz
  ref: 4c80598ade17fbaa7798e01a25d0bf29ce109740786026a074c5c62bb3e79d23
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
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
