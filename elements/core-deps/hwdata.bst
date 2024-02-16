kind: autotools

sources:
- kind: tar
  url: github_files:vcrhonek/hwdata/archive/refs/tags/v0.379.tar.gz
  ref: b98ef646d530d5fd3afa3180efbf7c8e22d3da0088f5836f41ee25380d87b092

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
