kind: meson

sources:
- kind: git_tag
  url: gnome:calls.git
  track: main
  submodules:
    subprojects/libcall-ui:
      checkout: true
      url: gnome_gitlab:World/Phosh/libcall-ui.git
  ref: v43.0-33-g563ceb770c884ea62ab313ad7a6a7a8af825d217

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
- core-deps/libpeas.bst
- core-deps/sofia-sip.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
