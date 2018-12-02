kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.20-80-g631d0af108c267bec4ae17d411771fb6f893c8cb
config:
  options:
    target_arch: '%{arch}'
