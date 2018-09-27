kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: 718ea88089644a1ea5b488de0b90c2c565cb75f8 #  freedesktop-sdk-18.08.12
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
