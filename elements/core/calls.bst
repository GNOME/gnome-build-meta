kind: meson

sources:
- kind: git_tag
  url: gnome:calls.git
  track: main
  submodules:
    subprojects/libcall-ui:
      checkout: true
      url: gnome_gitlab:World/Phosh/libcall-ui.git
  ref: v44.0-62-g958d63dfab07d27266352dcae1ec0af950e1e90d

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
