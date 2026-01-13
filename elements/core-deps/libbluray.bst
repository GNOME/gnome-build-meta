kind: meson
sources:
- kind: tar
  url: videolan_pub:videolan/libbluray/1.4.0/libbluray-1.4.0.tar.xz
  ref: 77937baf07eadda4b2b311cf3af4c50269d2ea3165041f5843d96476c4c92777

build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbdj_jar=disabled
    -Denable_docs=true
