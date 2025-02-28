kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.52.3-5-g4b97688d527276fc1e835fed71dbb73bbd09ac11
# FIXME: Keep this in sync with the repo until we can use wraps as sources
#
# https://gitlab.gnome.org/GNOME/pygobject/-/blob/main/subprojects/gobject-introspection-tests.wrap
- kind: git_repo
  url: gnome:gobject-introspection-tests.git
  directory: subprojects/gobject-introspection-tests
  ref: ca387326e2161b4608190417c26e45931e00b265
# FIXME: Keep this (plus the patching below) in sync with the repo until we can use wraps as sources
#
# https://gitlab.gnome.org/GNOME/pygobject/-/blob/main/subprojects/pythoncapi-compat.wrap
- kind: git_repo
  url: github:python/pythoncapi-compat.git
  directory: subprojects/pythoncapi-compat
  ref: 2d18aecd7b2f549d38a13e27b682ea4966f37bd8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  configure-commands:
    (<):
    - patch -p1  -d subprojects/pythoncapi-compat -i ../packagefiles/pythoncapi-compat-meson.diff
