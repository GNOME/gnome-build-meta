kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: valentindavid/printing
config:
  options:
    target_arch: '%{arch}'
