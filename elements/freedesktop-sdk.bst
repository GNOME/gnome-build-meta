kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.13-0-g8eb7dda2b04843fef7eed33787515a0e1d1d8bcb
config:
  options:
    target_arch: '%{arch}'
