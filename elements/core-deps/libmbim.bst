kind: autotools
sources:
- kind: tar
  url: freedesktop_software:libmbim/libmbim-1.26.4.tar.xz
  ref: f688cec4c4586a17575f5e327448ce62f2000ef6a07c9e4589873d4a68568ad9
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --enable-more-warnings=no
