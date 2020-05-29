kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: abderrahim/gcc10-fixes
config:
  options:
    target_arch: '%{arch}'
