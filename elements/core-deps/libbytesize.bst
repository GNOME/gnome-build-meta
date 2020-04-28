kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libbytesize/releases/download/2.2/libbytesize-2.2.tar.gz
  ref: b93c54b502880c095c9f5767a42464853e2687db2e5e3084908a615bafe73baa
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mpfr.bst
- freedesktop-sdk.bst:components/pcre2.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
