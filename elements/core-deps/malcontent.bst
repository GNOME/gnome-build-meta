kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/malcontent-0.4.0.tar.xz

  ref: 4e7731a31529b9111ab4ae923d4c7844fe889d8acd2c8798aec72d34e20921ae
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/polkit.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
