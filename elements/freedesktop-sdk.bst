kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.8-0-gacf31516375d7a5fd574745aa37f4e8dd001b07b
config:
  options:
    target_arch: '%{arch}'
