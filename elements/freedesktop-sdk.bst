kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.13-0-g55e82e3e76710655deea2a5d36ca07d9476f1c20
config:
  options:
    target_arch: '%{arch}'
