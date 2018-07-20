kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: master
  ref: 2c0afd895267f3fe1ac9c2f851c81316cd3e5e9b
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
