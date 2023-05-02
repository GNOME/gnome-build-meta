kind: meson
sources:
- kind: local
  path: files/os-release
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/appstream-glib.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=bootable
    -Dvariant=user
