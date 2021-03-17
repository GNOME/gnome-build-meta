kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/40/gnome-user-docs-40.rc.tar.xz
  ref: 28efefa332398e52b75e533cabcc7d0ae2af5e4c946f6301f26c810b2186f6bc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
