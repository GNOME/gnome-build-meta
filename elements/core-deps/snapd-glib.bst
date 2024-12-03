kind: meson

sources:
- kind: tar
  url: github_files:canonical/snapd-glib/releases/download/1.66/snapd-glib-1.66.tar.xz
  ref: e197b2e8ea7b55f9ee4cc619b262d4457b915cc1e83fc77e3e0ca4115523337c

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/json-glib.bst
- sdk/libsoup.bst

variables:
  meson-local: >-
    -Dqt5=false
    -Dqt6=false
    -Dvala-bindings=false
