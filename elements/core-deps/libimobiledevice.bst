kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice.git
  track: '*.*.*'
  ref: 1.4.0-0-g149f7623c672c1fa73122c7119a12bfc0012f2ac

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libimobiledevice-glue.bst
- core-deps/libplist.bst
- core-deps/libtatsu.bst
- core-deps/libusbmuxd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgcrypt.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl
