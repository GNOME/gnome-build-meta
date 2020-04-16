kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: 19.08
  track-tags: true
- kind: patch
  path: fdsdk-systemd-greeter-display-session.patch
config:
  options:
    target_arch: '%{arch}'
