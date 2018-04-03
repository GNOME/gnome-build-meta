kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: master
  ref: 5ce37ea0a2d058375105059a5741d1e8f5da8904
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
