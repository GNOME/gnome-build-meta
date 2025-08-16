kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xorg/app/xauth.git
  track: '*.*'
  ref: xauth-1.1.4-0-gf71ca21cf1ab840e9664b7c3e99c229bd977a6a4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- core-deps/xorg-lib-xmu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
