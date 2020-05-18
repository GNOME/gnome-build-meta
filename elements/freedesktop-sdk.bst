kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
- kind: patch
  path: patches/0001-Touch-machine-id-allows-systemd-to-generate-commit-o.patch
config:
  options:
    target_arch: '%{arch}'
