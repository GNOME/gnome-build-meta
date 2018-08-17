kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
