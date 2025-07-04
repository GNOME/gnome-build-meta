kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/42/yelp-xsl-42.4.tar.xz
  ref: fdebb07eb2e66a7fb7a0dce6ad8248ad29a4bbb134ba829128ca104f58abd7d1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
