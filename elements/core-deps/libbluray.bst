kind: meson
sources:
- kind: git_repo
  url: videolan:libbluray.git
  track: '*.*.*'
  ref: 1.5.0-0-gd75c88e54c893e5cbf4c61d356477655eb435769
- kind: git_module
  url: videolan:libudfread.git
  path: contrib/libudfread
  ref: 139a2194525f2745b98a98e4d8fa627d07440176
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
