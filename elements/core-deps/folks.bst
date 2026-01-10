kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.12.tar.xz
  ref: 21f44e2bdabb1ee7f8e41bb996d10ac7daf35c78c498177db0c00f580a20a914
build-depends:
- core-deps/python-dbusmock.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
