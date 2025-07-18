kind: autotools

sources:
- kind: tar
  url: gitlab_files:-/project/429008/uploads/843c156420e211859e974f78f64c3ea3/sane-backends-1.4.0.tar.gz
  ref: f99205c903dfe2fb8990f0c531232c9a00ec9c2c66ac7cb0ce50b4af9f407a72
- kind: local
  path: files/sane-backends/sysusers.conf

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libgphoto2.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/avahi-libs.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - |
      install -Dm 644 tools/udev/libsane.rules %{install-root}$(pkg-config --variable=udevdir udev)/rules.d/60-libsane.rules
    - |
      install -Dm 644 sysusers.conf %{install-root}$(pkg-config --variable=sysusersdir systemd)/libsane.conf
