kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/41/yelp-xsl-41.beta.tar.xz
  ref: 75f9213fd3f42441800bbed536a340e72afa9dd85a432c14c3cc248d912c7011
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
