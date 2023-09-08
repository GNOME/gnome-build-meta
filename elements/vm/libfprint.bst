kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pixman.bst
- core-deps/libgusb.bst
- sdk/glib.bst
- sdk/cairo.bst

sources:
- kind: git_tag
  track: v1.94.6
  url: freedesktop:libfprint/libfprint.git
  ref: v1.94.6-0-g135a015b6a780e85f828a1bb9a62a2ee0c72e04b
