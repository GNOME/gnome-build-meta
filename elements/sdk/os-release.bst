kind: meson
sources:
- kind: local
  path: files/os-release
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/appstream-minimal.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=flatpak
