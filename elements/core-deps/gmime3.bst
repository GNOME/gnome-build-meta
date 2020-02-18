kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gmime/3.2/gmime-3.2.6.tar.xz
  ref: abff194c7c4802fba2e233890d09dde8bf7170c3ad5e13000601c8d5b3c44717
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
