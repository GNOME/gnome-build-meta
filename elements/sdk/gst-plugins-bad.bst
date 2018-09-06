kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
depends:
- sdk/gst-plugins-base.bst
- sdk/librsvg.bst
- sdk/opus.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dopus=enabled -Drsvg=enabled -Dvulkan=enabled
