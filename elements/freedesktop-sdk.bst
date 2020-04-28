kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.9-0-g076fe9d30f37224a1bd756a177e33399dad37e8d
config:
  options:
    target_arch: '%{arch}'
