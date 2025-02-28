kind: meson

sources:
- kind: git_repo
  url: freedesktop:libfprint/libfprint.git
  track: v1.94.6
  ref: v1.94.6-0-g135a015b6a780e85f828a1bb9a62a2ee0c72e04b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libgusb.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pixman.bst
- sdk/glib.bst
- sdk/cairo.bst
