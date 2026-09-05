kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 51.beta-11-g44506cbdab7d54f74a04bf3a10eecf93ec8f036c

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
