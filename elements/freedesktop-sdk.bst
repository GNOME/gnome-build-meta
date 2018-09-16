kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: bab9e5c057b0b156c706bd4f945267cda8f0577a   # freedesktop-sdk-18.08.9
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
