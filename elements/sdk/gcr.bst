kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gcr/3.34/gcr-3.34.0.tar.xz
  ref: 29df50974a90987af694c0fb8926a6b366e68cacd8abd813817cfe1eb5d54524
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/p11-kit.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
