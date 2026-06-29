kind: autotools

sources:
- kind: git_repo
  url: github:rrthomas/enchant.git
  track: "v*.*.*"
  ref: v2.8.16-0-gf4098289e4ca5bba79598f8afd2ab94d5497dcce
- kind: git_module
  path: gnulib
  url: savannah:gnulib.git
  ref: d8dc57fe59a06056caf3561da1d48f5f8c80f655
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
