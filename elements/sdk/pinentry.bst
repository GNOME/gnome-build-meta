kind: autotools

sources:
- kind: tar
  url: gnupg_ftp:gcrypt/pinentry/pinentry-1.3.3.tar.bz2
  ref: c2970f16d6afb66ecddfca767d743936c86239bff936eed7fd7597a678414b63
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gcr.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/libgpg-error.bst
- freedesktop-sdk.bst:components/libassuan.bst

variables:
  conf-local: >-
    --enable-pinentry-gome
    --enable-fallback-curses
    --disable-pinentry-curses
    --disable-pinentry-qt
    --disable-pinentry-gtk2
    --disable-pinentry-fltk
    --enable-libsecret
