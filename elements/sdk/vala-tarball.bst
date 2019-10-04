kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.20.tar.xz
depends:
- sdk/glib.bst
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
