kind: manual

sources:
- kind: tar
  url: github_com:M0Rf30/android-udev-rules/archive/20210425.tar.gz

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - install -Dm 644 android-udev.conf -t %{install-root}$(pkg-config systemd --variable sysusersdir)
  - install -Dm 644 51-android.rules -t %{install-root}$(pkg-config udev --variable udevdir)/rules.d
