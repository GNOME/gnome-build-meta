kind: meson
sources:
- kind: git_tag
  url: github_com:linuxwacom/libwacom.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dtests=false
