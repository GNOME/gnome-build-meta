kind: autotools

sources:
- kind: tar
  url: gnupg_ftp:gcrypt/pinentry/pinentry-1.3.2.tar.bz2
  ref: 8e986ed88561b4da6e9efe0c54fa4ca8923035c99264df0b0464497c5fb94e9e

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
