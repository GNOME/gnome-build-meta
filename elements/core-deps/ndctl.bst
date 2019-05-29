kind: autotools
sources:
- kind: tar
  url: github_com:pmem/ndctl/archive/v64.1.tar.gz
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
  conf-local: --without-keyutils --without-bash --disable-docs
