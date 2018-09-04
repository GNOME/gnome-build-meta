kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: db38f00907c76ff77177e15e80fc6a5a20be80c2
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
