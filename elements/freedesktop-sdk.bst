kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08rc.1-0-ga57a805ddae07e57a40c94e1784b8955ec318978
config:
  options:
    target_arch: '%{arch}'
