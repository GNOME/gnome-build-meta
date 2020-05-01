kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.10-0-gf24d6f4dd60da0c94c61a3993f5992fa28219a8f
config:
  options:
    target_arch: '%{arch}'
