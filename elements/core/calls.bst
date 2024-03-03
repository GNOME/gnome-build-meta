kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v45.0-51-g8b8e20cc1918fed95c7a77dfca9129a282c65e12
- kind: git_module
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  path: subprojects/libcall-ui
  ref: 6798b38d4d66d069751151b3e9a202c6de8d7f3c

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
