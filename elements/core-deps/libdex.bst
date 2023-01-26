kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:chergert/libdex.git
  track: main
  ref: 0.1.0-5-g25a051d44361bfe722570e3e46611f3b3b83334d

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
