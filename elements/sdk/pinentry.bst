kind: autotools

sources:
- kind: git_repo
  url: github:gpg/pinentry.git
  track: pinentry-*.*.*
  ref: pinentry-1.3.3-0-g9a7b78e9882b8261b0be439cccf5651b9dd971a8

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- sdk/gcr.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/libgpg-error.bst
- freedesktop-sdk.bst:components/libassuan.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
    --enable-pinentry-gnome3
    --enable-fallback-curses
    --disable-pinentry-curses
    --disable-pinentry-qt
    --disable-pinentry-gtk2
    --disable-pinentry-fltk
    --enable-libsecret
