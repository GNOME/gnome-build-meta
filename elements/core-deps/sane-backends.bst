kind: autotools

sources:
- kind: git_repo
  url: gitlab:sane-project/backends.git
  track: '*.*.*'
  ref: 1.4.0-0-gc7e4b5e35e3d614d2b1181d760a717bfc395a203
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
