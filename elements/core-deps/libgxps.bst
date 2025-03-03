kind: meson

sources:
- kind: git_repo
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-7-g48363d65af57ebc5c098bd5f21110bc4b88fb00b

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Denable-test=false

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
