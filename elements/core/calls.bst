kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v46.0-110-gd3ebb49f2bb033cfd8cfe505d9cd9d3fb30163bd
- kind: git_module
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  path: subprojects/libcall-ui
  ref: 7ff3e6649a2ef44bc96d3179cd8b1dac2fdd681d

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/callaudiod.bst
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- core-deps/folks.bst
- core-deps/gom.bst
- core-deps/libpeas-1.bst
- core-deps/sofia-sip.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
