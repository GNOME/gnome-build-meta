kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.3-0-g8bb5290c261772e7d3792fae2b983dc68c8b8d9d
config:
  options:
    target_arch: '%{arch}'
