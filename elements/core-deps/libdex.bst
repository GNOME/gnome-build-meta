kind: meson

sources:
  - kind: git_tag
    url: gnome_gitlab:chergert/libdex.git
    track: main
    ref: 1a16c8423a4a302fbc610663c71eb9707dd6888f

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
    -Dexamples=false
