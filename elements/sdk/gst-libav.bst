kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
depends:
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime

variables:
  target_specific: ''
  (?):
    - arch == "i386":
        target_specific: "--build=i586-unknown-linux-gnu"
    - arch == "arm":
        target_specific: "--build=arm-unknown-linux-gnueabi"

  conf-local: |
    --with-system-libav \
    %{target_specific}
