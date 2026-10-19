kind: meson

sources:
- kind: anitya
  project-id: 10888
  url: cantarell:cantarell-fonts-{version}.tar.xz
  ref:
    version: 0.303
    sha256sum: f9463a0659c63e57e381fdd753cf1929225395c5b49135989424761830530411
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Duseprebuilt=true
