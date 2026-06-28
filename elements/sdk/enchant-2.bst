kind: autotools

sources:
- kind: git_repo
  url: github:rrthomas/enchant.git
  track: "v*.*.*"
  ref: v2.8.2-0-g2e2739acea4926ae2584823b5f75480243b191df
- kind: git_module
  path: gnulib
  url: savannah:gnulib.git
  ref: 648aeb575db7af9ddd51cf17d1b56ee91e9ef3c5
- kind: git_module
  path: gl-mod/bootstrap
  url: github:gnulib-modules/bootstrap.git
  ref: 037f83765b6e8f90dfabdfac4889be22a5a3f4a4

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
