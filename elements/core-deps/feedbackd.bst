kind: meson

sources:
- kind: tar
  url: purism_releases:feedbackd/feedbackd-0.2.1.tar.xz
  ref: 4f0713d0f6b4491e5487a672db541d36de70952a6644580abeb2c6025fb31a7a
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
