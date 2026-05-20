kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v50.0-22-g08f3e4ff2c6dbe1b09622097e7bc740555347a9e
# Needs to be updated manually until we have a wrap-git plugin
- kind: git_repo
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  directory: subprojects/libcall-ui
  ref: 3a2044f8e7c45387954ed35d22c6b6309e6751d6

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/python3-docutils.bst

depends:
- core-deps/callaudiod.bst
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- core-deps/folks.bst
- core-deps/gmobile.bst
- core-deps/gom.bst
- core-deps/libpeas.bst
- core-deps/mobile-broadband-provider-info.bst
- core-deps/sofia-sip.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/modemmanager.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
