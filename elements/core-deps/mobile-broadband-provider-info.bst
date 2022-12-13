kind: autotools

sources:
- kind: git_tag
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20221107-3-g4da521f2b58b7d83ad9149c7130d7c5a5116bbd5

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
