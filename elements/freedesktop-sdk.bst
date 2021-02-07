kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.4-0-gdd3b7b24cb4a45ad069d33923339619d3987f6d6
config:
  options:
    target_arch: '%{arch}'
