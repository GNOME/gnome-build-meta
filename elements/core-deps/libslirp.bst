kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: tar
  url: https://elmarco.fedorapeople.org/libslirp-4.3.1.tar.xz
  ref: 388b4b08a8cc0996cc5155cb027a097dc1a7f2cfe84b1121496608ab5366cc48
