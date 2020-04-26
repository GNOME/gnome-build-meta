kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libcap.bst

sources:
- kind: git_tag
  url: github_com:projectatomic/bubblewrap.git
  track: v0.4.1
