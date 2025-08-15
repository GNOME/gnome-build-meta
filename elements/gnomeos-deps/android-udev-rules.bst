kind: manual

sources:
- kind: tar
  url: github_files:M0Rf30/android-udev-rules/archive/20250525.tar.gz
  ref: 582bf8daa23f318047e77ece4c101c8696fd9151c459f695dca56cf4a40a72a2

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm 644 android-udev.conf -t %{install-root}$(pkg-config systemd --variable sysusersdir)
  - install -Dm 644 51-android.rules -t %{install-root}$(pkg-config udev --variable udevdir)/rules.d
