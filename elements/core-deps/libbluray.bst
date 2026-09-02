kind: meson

sources:
- kind: git_repo
  url: videolan:libbluray.git
  track: '*.*.*'
  ref: 1.5.1-0-ga24f4fad4d62893de647abc8671397747b2359dd
- kind: git_module
  url: videolan:libudfread.git
  path: contrib/libudfread
  ref: 139a2194525f2745b98a98e4d8fa627d07440176

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/doxygen.bst

depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbdj_jar=disabled
    -Denable_docs=true
