kind: autotools

sources:
- kind: tar
  url: https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.3.1.tar.bz2
  ref: bc72ee27c7239007ab1896c3c2fae53b076e2c9bd2483dc2769a16902bce8c04

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
