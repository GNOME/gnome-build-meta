kind: autotools

sources:
- kind: tar
  url: github_com:endlessm/eos-metrics/archive/Release_3.7.5.tar.gz

depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- sdk/gtk-doc.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
