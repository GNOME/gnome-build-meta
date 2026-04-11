kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice.git
  track: '*.*.*'
  ref: 1.3.0-0-g15f8652126664e3a4b980e5d1c039b9053ce8566

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libusbmuxd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgcrypt.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl
