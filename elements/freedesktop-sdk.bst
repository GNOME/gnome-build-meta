kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.8-0-gfbcc9f667d93cb5f106e1bd3ed535f6d0c88f76a
config:
  options:
    target_arch: '%{arch}'
