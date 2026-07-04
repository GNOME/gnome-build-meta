kind: autotools

sources:
- kind: git_repo
  url: github:rrthomas/enchant.git
  track: "v*.*.*"
  ref: v2.8.18-0-g45b801ccecff1aaee91df2762a7f7b1fa1a649e3
- kind: git_module
  path: gnulib
  url: savannah:gnulib.git
  ref: 491f1bb7d3049f3ab7825f3ee665c209658e9965
- kind: git_module
  path: gl-mod/bootstrap
  url: github:gnulib-modules/bootstrap.git
  ref: a42785aaa63db8a824292f87bc1a3f8863942601

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/nuspell.bst
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-hunspell
    --with-hunspell-dir=/usr/share/myspell
    --with-nuspell

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libenchant-2.so'
