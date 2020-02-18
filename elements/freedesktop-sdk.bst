kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: 19.08
  track-tags: true
  ref: freedesktop-sdk-19.08.7-0-g821ddf32ab8e9c3f4a9514b618b8626615162b9f
config:
  options:
    target_arch: '%{arch}'
