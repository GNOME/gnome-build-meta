kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: master
  ref: 0.15.9-6-g8cd60eeaab11a7e5227cb265575e80d35bda58e5

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
