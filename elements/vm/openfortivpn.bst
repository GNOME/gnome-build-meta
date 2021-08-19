kind: autotools

sources:
- kind: tar
  url: github_file:adrienverge/openfortivpn/archive/refs/tags/v1.16.0.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/openssl.bst
