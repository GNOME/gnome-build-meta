kind: meson

sources:
- kind: git_tag
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-4-g0397b2b6f71780dd9eeef8894b72e1e15a93858f

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
