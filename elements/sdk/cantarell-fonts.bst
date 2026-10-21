kind: meson

sources:
- kind: anitya
  project-id: 10888
  url: cantarell:cantarell-fonts-{version}.tar.xz
  ref:
    version: 0.311
    sha256sum: 706778e6f9468d534d7afe05e4f6e1586110395ef37d24df259746736fd6b702
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Duseprebuilt=true
