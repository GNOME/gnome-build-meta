kind: meson
sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.9.tar.xz
  ref: 66c0517ed16df7af258e83208faaf5069727dfd66995c4bbc51c16954d674761
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocbook_docs=disabled -Dman=false
