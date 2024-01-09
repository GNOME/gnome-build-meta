kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.7.tar.xz
  ref: 120f219ef63212caa95ae7f6aeb64e29928b0b1a8b9452054304a00d0f347871
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
