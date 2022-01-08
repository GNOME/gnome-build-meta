kind: autotools
sources:
- kind: tar
  url: github_files:libhangul/libhangul/archive/refs/tags/libhangul-0.1.0.tar.gz
  ref: e2a81ef159ed098d3cc1a20377dba6204821b7ce2bc24cfb2f2543adf3bc5830
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
