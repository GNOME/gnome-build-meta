kind: meson

sources:
- kind: tar
  url: gnome_downloads:calls/42/calls-42.rc.1.tar.xz
  ref: 977dde9e306aca29361c8f2686918e1ae28be3610369cb650ca92f2a7333bc24
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
