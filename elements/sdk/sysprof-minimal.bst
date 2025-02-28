kind: meson

(@): elements/core/sysprof.inc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dexamples=false
    -Dgtk=false
    -Dpolkit-agent=disabled
    -Dtests=false
    -Dtools=false
    -Dlibsysprof=false
    -Dsysprofd=none
    -Dhelp=false
