kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.5-0-gdd20bd4dc3c919ee968395ce4b1303d8cd14201f
config:
  options:
    target_arch: '%{arch}'
