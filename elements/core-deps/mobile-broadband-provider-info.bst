kind: autotools

sources:
- kind: git_tag
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20221107-11-gdc42eec849900f3dd6e0ce031783d9aabbdef0c3

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
