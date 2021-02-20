kind: meson

sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gstreamer-editing-services/gstreamer-editing-services-1.16.2.tar.xz

  ref: 0e06a6191a0c6c16e16272bf2573cecaeb245f10629486ad940a299bef700c16
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/m4.bst # dependency of flex
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
