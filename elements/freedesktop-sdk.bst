kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
- kind: patch
  path: fdsdk-firmware.patch
config:
  options:
    target_arch: '%{arch}'
