kind: meson
sources:
- kind: tar
  url: gnome_downloads:gcab/1.4/gcab-1.4.tar.xz
  ref: 67a5fa9be6c923fbc9197de6332f36f69a33dadc9016a2b207859246711c048f
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
