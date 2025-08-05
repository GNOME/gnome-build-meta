kind: meson

sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 49.beta-0-g9fb4b3fe66943bafc89cf24cdb8b388e86f60219

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
