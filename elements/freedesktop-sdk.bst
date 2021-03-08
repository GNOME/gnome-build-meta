kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.13-8-g11bde349e26aa30c8bd404d458001d3d4d9d0c20
config:
  options:
    target_arch: '%{arch}'
