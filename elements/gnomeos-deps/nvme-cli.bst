kind: meson

sources:
- kind: git_repo
  url: github:linux-nvme/nvme-cli.git
  track: 'v*'
  exclude:
  - "*-a*"
  - "*-b*"
  - "*-rc*"
  ref: v3.1-0-gf73ecd53751cd74bc8e46b60c973ea63edf41403

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/swig.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/json-c.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/libnvme.bst
