kind: meson

sources:
- kind: git_repo
  url: github:ptomato/jasmine-gjs.git
  track: '*.*.*'
  ref: 3.10.1-0-g0b419384c7446ae74cd2fac295b9db5a18ce4ab1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
