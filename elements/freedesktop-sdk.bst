kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.14-0-g73eb93488b7331695a60edc6ea0e5ebb76eb81c8
config:
  options:
    target_arch: '%{arch}'
