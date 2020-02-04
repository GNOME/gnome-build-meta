kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/folks.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
