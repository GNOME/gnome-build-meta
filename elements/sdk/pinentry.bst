kind: autotools

sources:
- kind: tar
  url: https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.1.0.tar.bz2

  ref: 68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
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
