kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/42/yelp-xsl-42.beta.tar.xz
  ref: ca177a1cfc7e36161fafc81560972e42203aa3e8606df59794bf03edecf756cc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
