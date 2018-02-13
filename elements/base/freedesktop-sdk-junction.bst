kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: sam/systemd
config:
  options:
    target_arch: '%{arch}'
  path: sdk/
