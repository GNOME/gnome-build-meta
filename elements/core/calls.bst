kind: meson

sources:
- kind: git_tag
  url: gnome:calls.git
  track: main
  submodules:
    subprojects/libcall-ui:
      checkout: true
      url: gnome_gitlab:World/Phosh/libcall-ui.git
  ref: v44.0-2-gb099fc82b1b0dcc25d14e720b9db966ee792a925

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
