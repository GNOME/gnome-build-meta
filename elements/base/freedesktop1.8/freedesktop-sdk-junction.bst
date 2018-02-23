kind: junction

sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: sam/systemd
  ref: 386cc8f9310a1f7280f028486908967e2cfa1359

config:
  options:
    target_arch: '%{arch}'
  path: sdk/
