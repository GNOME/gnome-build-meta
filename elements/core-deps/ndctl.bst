kind: autotools
sources:
- kind: tar
  url: github_com:pmem/ndctl/archive/v64.1.tar.gz
  ref: 8ad95e2b46c157bda1e942be337fdeff0009ec928d45267d6e98fffce55103ef
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/json-c.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --without-keyutils
    --without-bash
    --disable-docs

  local_flags: -fcommon
