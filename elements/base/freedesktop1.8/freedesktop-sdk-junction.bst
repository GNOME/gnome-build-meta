kind: junction

sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: sam/systemd
  ref: d6fda6836360c391dc451e0b0f18eadc148760a5

config:
  options:
    target_arch: '%{arch}'
  path: sdk/
