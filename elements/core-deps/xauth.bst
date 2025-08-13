kind: autotools

sources:
- kind: tar
  url: 
    freedesktop_files:xorg/app/xauth/-/archive/xauth-1.1.4/xauth-xauth-1.1.4.tar.bz2
  ref: 0ee692eebcfa82cfe00d16ec06112ba7cdd65ddab894e3bc30088d4716c5130e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- core-deps/xorg-lib-xmu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
