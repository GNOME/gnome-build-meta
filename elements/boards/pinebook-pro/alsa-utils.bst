kind: autotools

sources:
- kind: git_tag
  url: github_com:alsa-project/alsa-utils.git
  track: v1.2.2

variables:
  conf-local: >-
    --disable-alsaconf
    --with-curses=ncursesw

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/alsa-lib.bst

