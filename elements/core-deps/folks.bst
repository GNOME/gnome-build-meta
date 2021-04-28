kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.2.tar.xz
  ref: ef777b2696d15ec31ba8b940ecabc17fe7fab909584f9425258f54d295ccd122
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
