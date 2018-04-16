kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: master
  ref: 6ada1b87ab1ef2f5765cfbacac6242f5038d0090
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
