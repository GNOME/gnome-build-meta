kind: manual

sources:
- kind: remote
  url: openrgb:release_0.9/60-openrgb.rules
  ref: b71bece9b1e979dd08554a24b7003b6d7bb6d77ea554e26135423f84c1afab38

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm 644 60-openrgb.rules -t %{install-root}$(pkg-config udev 
    --variable udevdir)/rules.d
  - |
    %{install-extra}


