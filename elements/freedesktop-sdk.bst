kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: df43908e0a6b98a2cab5a532b9fbe82f6327732f # freedesktop-sdk-18.08.15
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
