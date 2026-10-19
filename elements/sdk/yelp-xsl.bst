kind: meson

sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 49.0-12-gd183350ec6a3a55ddb45be7ba606233f38477172

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
