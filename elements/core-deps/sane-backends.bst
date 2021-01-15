kind: autotools

sources:
- kind: tar
  url: https://gitlab.com/sane-project/backends/uploads/a3ba9fff29253a94e84074917bff581a/sane-backends-1.0.27.tar.gz

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
    (>):
    - install -Dm 644 tools/udev/libsane.rules %{install-root}$(pkg-config --variable=udevdir udev)/rules.d/60-libsane.rules
