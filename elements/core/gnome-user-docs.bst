kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.beta.tar.xz
  ref: 0374dfba554d89d485f3f1cb26eeac3bfedea43db0934b8767e0af564338a406
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
