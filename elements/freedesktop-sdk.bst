kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: master
  ref: 2472d5a178149593ddeab0feb2be1ddd0348eb75
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
