kind: autotools
sources:
- kind: tar
  url: gnome_downloads:vala/0.36/vala-0.36.20.tar.xz
  ref: be960a87841d85ff76cbd0e10eb691675190e54bd690d76982b3fb94a1fc67a7
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
