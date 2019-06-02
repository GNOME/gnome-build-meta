kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: 18.08
config:
  options:
    target_arch: '%{arch}'
