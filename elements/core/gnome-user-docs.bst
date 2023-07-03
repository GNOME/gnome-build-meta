kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/43/gnome-user-docs-43.8.tar.xz
  ref: 744660b13663023575d29f22fafac195977ba94beedccd6703158d05cb0b3905
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
