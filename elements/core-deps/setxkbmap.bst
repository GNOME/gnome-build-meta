kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xorg/app/setxkbmap.git
  track: 'setxkbmap-*'
  ref: setxkbmap-1.3.5-0-g66d92298f83dd3406303fd2b376d70f5cb1b704d

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
