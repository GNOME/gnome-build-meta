kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: 3d013cc2f43ed38bf5f1dc096e33f6b2f1b3e721 # freedesktop-sdk-18.08.13
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'i386':
        target_arch: i586
