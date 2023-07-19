kind: meson

sources:
- kind: git_tag
  url: gnome:libdex.git
  track: main
  ref: 0.3.0-5-gc169bff276a09aa588a84ea1dd6293a606ce5742

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/liburing.bst
- sdk/glib.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
