kind: autotools

sources:
- kind: tar
  url: gnupg:ftp/gcrypt/pinentry/pinentry-1.3.0.tar.bz2
  ref: 9b3cd5226e7597f2fded399a3bc659923351536559e9db0826981bca316494de
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gcr-3.bst
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
