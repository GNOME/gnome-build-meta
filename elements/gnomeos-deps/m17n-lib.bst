kind: autotools

sources:
- kind: git_repo
  url: savannah:m17n/m17n-lib.git
  track: 'REL-*'
  exclude:
  - '*alpha*'
  ref: REL-1-8-6-0-g86c100d99243e89ce037a1226597744e1b7e1773

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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
