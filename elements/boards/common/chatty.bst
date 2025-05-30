kind: meson

sources:
- kind: git_repo
  url: purism:Librem5/chatty.git
  track: master
  ref: v0.7.3-45-g4355af485f8fec53ea07745e6f41f8b1fa7a8e33
- kind: git_module
  url: purism:Librem5/libcmatrix.git
  path: subprojects/libcmatrix
  ref: ec50358d3bf102e7f8f1843e537bcf1f150d2b7a

build-depends:
- core-deps/ModemManager.bst
- sdk-deps/appstream-glib.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- boards/common/libphonenumber.bst
- boards/common/olm.bst
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: |
    -Dpurple=disabled
