kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/45/gnome-user-docs-45.10.tar.xz
  ref: 46ef58536e505ef4afac36fdc6e51a6b2e1709a917195ebcd443e9583d07adad
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
