kind: meson
sources:
- kind: local
  path: files/os-release
build-depends:
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=bootable
    -Dvariant=devel
