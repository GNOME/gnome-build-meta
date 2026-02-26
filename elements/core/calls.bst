kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v49.1.1-85-g051d76ca70c3f288b6bbe18c02917deb75189c47
# Needs to be updated manually until we have a wrap-git plugin
- kind: git_repo
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  directory: subprojects/libcall-ui
  ref: 3a2044f8e7c45387954ed35d22c6b6309e6751d6

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
- core-deps/gmobile.bst
- core-deps/gom.bst
- core-deps/libpeas.bst
- core-deps/mobile-broadband-provider-info.bst
- core-deps/sofia-sip.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
