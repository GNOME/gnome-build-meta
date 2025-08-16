kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xorg/app/setxkbmap.git
  track: 'setxkbmap-*'
  ref: setxkbmap-1.3.4-0-g094d979324efca8bbb2ad3756ee947c2d2b41a79

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst

variables:
  conf-local: >-
    --disable-silent-rules
