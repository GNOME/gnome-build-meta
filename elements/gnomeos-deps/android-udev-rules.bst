kind: manual

sources:
- kind: git_repo
  url: github:M0Rf30/android-udev-rules.git
  track: '20*'
  ref: 20260922-0-gf45ef6c7716ee40056fa687aeac18a8ca40933aa

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm 644 android-udev.conf -t %{install-root}$(pkg-config systemd --variable sysusersdir)
  - install -Dm 644 51-android.rules -t %{install-root}$(pkg-config udev --variable udevdir)/rules.d
  - "%{install-extra}"
