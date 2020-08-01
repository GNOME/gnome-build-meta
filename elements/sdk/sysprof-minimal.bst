kind: meson

(@): elements/core/sysprof.inc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Denable_examples=false
    -Denable_gtk=false
    -Denable_tests=false
    -Denable_tools=false
    -Dlibsysprof=false
    -Dwith_sysprofd=none
    -Dhelp=false
