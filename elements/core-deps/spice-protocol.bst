kind: meson
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.14.5.tar.xz
  ref: baf58449f6e89d19f475899ad5fb9196fdc46c03cc53233f4e39cf2978f9cff7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
