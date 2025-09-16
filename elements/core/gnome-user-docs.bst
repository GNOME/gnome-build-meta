kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/48/gnome-user-docs-48.5.tar.xz
  ref: d062d7fd1c36aaeae97c482ef37e2b1cd950d743ebcc5979eea7fa497eb202c6
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
