kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- sdk/gobject-introspection.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/gtk-doc.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/python3-dbusmock.bst

sources:
- kind: git_tag
  url: github_com:endlessm/eos-metrics.git
  track: master
  track-tags: true
  track-extra:
  - eos3.6
  - eos3.7
