kind: autotools

sources:
- kind: git_tag
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20221107-1-gc3d327d452f91bf22559bc30024c37d3ae2d9cb8

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
