kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/chatty.git
  track: main
  ref: v0.8.8-19-g82aad9f864bfd5b08c5be8b311ffb39a4bb0020b
- kind: git_repo
  url: purism:Librem5/libcmatrix.git
  directory: subprojects/libcmatrix
  track: v0.0.3 # from the wrap file
  ref: v0.0.3-0-gd3e0ae0c7f80b1b88fa6c704a89d4c363d3a4ec7

build-depends:
- core-deps/ModemManager.bst
- sdk-deps/appstream-glib.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- boards/common/libphonenumber.bst
- boards/common/olm.bst
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: |
    -Dpurple=disabled
