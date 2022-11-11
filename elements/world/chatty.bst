kind: meson

sources:
- kind: git_tag
  url: purism:Librem5/chatty.git
  track: master
  checkout-submodules: False
  submodules:
    subprojects/libgd:
      checkout: True
      url: gnome:libgd.git
    subprojects/libcmatrix:
      checkout: True
      url: purism:Librem5/libcmatrix.git
  ref: v0.7.0_rc2-7-g5a1ae3dc6d2750527ed1436d8e16d962957ee891

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/itstool.bst
- core-deps/ModemManager.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- sdk/appstream-glib.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- sdk/libhandy.bst
- world/olm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- world/libphonenumber.bst

variables:
  meson-local: |
    -Dpurple=disabled
