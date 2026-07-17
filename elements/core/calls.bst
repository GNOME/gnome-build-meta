kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v50.0-20-gc80f10c3b568ceafbb8347636e407697de1dd6cf
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
- core-deps/ModemManager.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
