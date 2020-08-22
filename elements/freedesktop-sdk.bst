kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08rc.2-0-g0cdc966736df6272baf2b6847590034eeac6dddb
config:
  options:
    target_arch: '%{arch}'
