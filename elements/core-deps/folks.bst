kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: master
  ref: 0.15.9-4-ged9dd294ef8d33d3eb2add4dfee64a170bbdd141

build-depends:
- core-deps/python-dbusmock.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
