kind: meson

sources:
- kind: git_tag
  url: purism:Librem5/chatty.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gnome:libgd.git
    subprojects/libcmatrix:
      checkout: true
      url: purism:Librem5/libcmatrix.git
  ref: v0.7.0_rc4-1-g1a554c0eee55d6e47942cb24d52c7a70b0c6e9da

build-depends:
- core-deps/ModemManager.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- sdk/libhandy.bst
- world/libphonenumber.bst
- world/olm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: |
    -Dpurple=disabled
