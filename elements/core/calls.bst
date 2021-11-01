kind: meson

sources:
- kind: tar
  url: gnome_downloads:calls/41/calls-41.1.tar.xz
  ref: 0ddbe9aa6fce409988cafd0d2fcb6d96dd0034eabbaf8400bc9fc8a6bf33bb07
build-depends:
- sdk/vala.bst
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
