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
    -Dcommit-date='%{commit-date-pretty}'
    -Dcommit='%{commit}'
    -Dimage-version=%{image-version}
    -Dmode=oci
