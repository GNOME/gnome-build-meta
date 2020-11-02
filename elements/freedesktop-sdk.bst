kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.1.2-0-gf120c109b400821e05e06e02536fd986ebe8c1df
config:
  options:
    target_arch: '%{arch}'
