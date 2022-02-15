kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.4.tar.xz
  ref: e71099afc9e88fad4e757ae134bc3fd63e12b901ad62b0ed5536afb79124af5f

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
