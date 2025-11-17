kind: make

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'semodule-utils-*'
  exclude:
  - '*rc*'
  ref: semodule-utils-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

variables:
  command-subdir: semodule-utils
