kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/3.35/gnome-user-docs-3.35.92.tar.xz
  ref: ab6b8878593422a35ddb49ca671f292255fec5ce456931c6a4fba251522a9717
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
