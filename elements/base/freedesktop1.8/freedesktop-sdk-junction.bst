kind: junction

sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: sam/linux-libdir
  ref: f091377e2e2e4e629e54f63075221b704e6c90e9

config:
  options:
    target_arch: '%{arch}'
  path: sdk/
