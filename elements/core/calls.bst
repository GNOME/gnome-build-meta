kind: meson

sources:
- kind: tar
  url: gnome_downloads:calls/41/calls-41.0.tar.xz
  ref: aeebbbab2c03403cb4e746a5f68bc6c66ed379ebed4fd083aad1acad54685b35
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
