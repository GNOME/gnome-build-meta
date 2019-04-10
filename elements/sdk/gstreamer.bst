kind: meson
sources:
- kind: tar
  url: gstreamer:gstreamer/gstreamer-1.14.4.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: "-Dbash-completion=disabled -Ddbghelp=disabled -Dexamples=disabled\
    \ -Dlibunwind=disabled\n"
