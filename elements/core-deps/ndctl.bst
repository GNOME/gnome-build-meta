kind: autotools
sources:
- kind: tar
  url: github_com:pmem/ndctl/archive/v64.1.tar.gz
  ref: 8ad95e2b46c157bda1e942be337fdeff0009ec928d45267d6e98fffce55103ef
depends:
- core-deps/json-c.bst
- filename: vm/linux-vm-boot/kmod.bst
  junction: freedesktop-sdk.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --without-keyutils
    --without-bash
    --disable-docs
