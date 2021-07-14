kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.38/gnome-user-docs-3.38.8.tar.xz
  ref: 9ab99c0a6b2195ceb536720f34f60609f7240a191bfca15d615c12540860b515
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
