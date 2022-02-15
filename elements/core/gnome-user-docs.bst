kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.6.tar.xz
  ref: 0a1ff235c9abb35193b9dcacbb9ea5682eb3e656c38716839bec4b706d47254b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
