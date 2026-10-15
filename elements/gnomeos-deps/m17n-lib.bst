kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-lib.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-7-0-g9c4641568c50d4c7197efa395257a638937d04db

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libxml2.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libm17n-core.so'
        - '%{libdir}/libm17n-flt.so'
        - '%{libdir}/libm17n-gui.so'
        - '%{libdir}/libm17n.so'
