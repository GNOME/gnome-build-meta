kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/46/gnome-user-docs-46.0.tar.xz
  ref: 8c18ae0c4a0c142e193111b713c959813441bb5d9df25977b13818f6e4ae6291
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
