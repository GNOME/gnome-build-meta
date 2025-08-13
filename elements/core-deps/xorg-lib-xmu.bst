kind: autotools

sources:
- kind: tar
  url: 
    freedesktop_files:xorg/lib/libxmu/-/archive/libXmu-1.2.1/libxmu-libXmu-1.2.1.tar.bz2
  ref: 98b090fe76cd5b8ba990eedede2275d440471ec8e593c7c1ae90142c7e06f019

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
