kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/41/gnome-user-docs-41.1.tar.xz
  ref: 55ee3df577d1717fc152fc2aeb89d0af7a9eca866c8974c675f60bd630888c48
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
