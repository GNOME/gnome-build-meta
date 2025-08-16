kind: meson

sources:
- kind: git_repo
  url: freedesktop:upower/upower.git
  track: 'v*'
  ref: v1.90.9-0-gbdbd99b809cde47cfccbd24eea47c3235c043081

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libimobiledevice.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
