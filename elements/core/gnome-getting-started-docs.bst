kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-getting-started-docs/3.36/gnome-getting-started-docs-3.36.2.tar.xz
  ref: 0494b8913a946b6450536e120c154abd29238ebba2f52734592b1f645e521dc6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
