kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
config:
  options:
    target_arch: '%{arch}'
