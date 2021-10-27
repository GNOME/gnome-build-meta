kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.15-0-gd411d3bd475c76d0ab105aba33433f861f8d062d
config:
  options:
    target_arch: '%{arch}'
