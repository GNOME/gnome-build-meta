kind: meson
sources:
- kind: local
  path: files/os-release
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/appstream-minimal.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=ostree
    -Dvariant=devel
    -Dimage-version=%{image-version}
