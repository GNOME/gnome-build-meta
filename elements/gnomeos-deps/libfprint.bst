kind: meson

sources:
- kind: git_repo
  url: freedesktop:libfprint/libfprint.git
  track: v*
  ref: v1.94.100-0-g80a4b5ec612892c5c056c48dddaa561452cf37ec

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
