kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: valentindavid/python-dynload
  ref: 0df1f375ce2b715c61f7c1b1eb24db81d1294f43
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
