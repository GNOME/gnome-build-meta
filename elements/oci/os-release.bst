kind: meson

sources:
- kind: local
  path: files/os-release

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/appstream-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=oci
    -Dimage-version=%{image-version}
