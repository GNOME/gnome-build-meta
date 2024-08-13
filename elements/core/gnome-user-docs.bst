kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/47/gnome-user-docs-47.beta.tar.xz
  ref: 57754f150915d909d019d2bd5af5eadb2532d1d12d05391d71a6c24835dac5a5
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
