kind: meson

sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 49.0-3-gf503d49ecd2d82acc6241767654a5c7aae2f0593

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
