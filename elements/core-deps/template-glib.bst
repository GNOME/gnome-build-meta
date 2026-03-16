kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.40/template-glib-3.40.0.tar.xz
  ref: e533ec2f6c24cc6df66ac55ac824fadd1b4a5f433a11cbf3a6b25815c0cfcfd5
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
