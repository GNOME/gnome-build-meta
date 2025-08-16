kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxmu.git
  track: 'libXmu-*'
  ref: libXmu-1.2.1-0-g792f80402ee06ce69bca3a8f2a84295999c3a170

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
