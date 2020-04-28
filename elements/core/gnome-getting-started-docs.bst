kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.34/gnome-getting-started-docs-3.34.2.tar.xz
  ref: 7c7ce663e9849013cca663dbc2f2741fc594df76c26a2dbcd033f973b48a6854
depends:
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
