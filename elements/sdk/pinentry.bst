kind: autotools

sources:
- kind: tar
  url: https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.2.0.tar.bz2

  ref: 10072045a3e043d0581f91cd5676fcac7ffee957a16636adedaa4f583a616470
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
