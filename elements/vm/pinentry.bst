kind: autotools

sources:
- kind: tar
  url: https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.1.0.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gcr.bst

variables:
  conf-local: >-
    --enable-pinentry-gome
    --enable-fallback-curses
    --disable-pinentry-curses
    --disable-pinentry-qt
    --disable-pinentry-gtk2
