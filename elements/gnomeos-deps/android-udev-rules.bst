kind: manual

sources:
- kind: git_repo
  url: github:M0Rf30/android-udev-rules.git
  track: '20*'
  ref: 20250525-0-ge62577fade0e79a965edfff732b88f228266cb0b

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
  - "%{install-extra}"
