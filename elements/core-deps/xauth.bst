kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xorg/app/xauth.git
  track: '*.*'
  ref: xauth-1.1.5-0-g6fe9365f11181a043f151f2e67f36015c278791d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- core-deps/xorg-lib-xmu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
