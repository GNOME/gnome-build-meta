kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-docs/45/gnome-user-docs-45.1.tar.xz
  ref: 2f90c6827b5f1605df2edfbea2b342870300a9a981bc392dc96214d967f3adf1
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
