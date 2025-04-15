kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/48/gnome-user-docs-48.1.tar.xz
  ref: ac973d924e00545a1458d86a110d4773e6bbe37c372840d76ed640cb268c61fd
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
