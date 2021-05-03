kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.1.tar.xz
  ref: 93bbf3476bb7fc550f9ccd0c4e6ee7d6d54639176bdcea08d0c47c9b444e8d26
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
