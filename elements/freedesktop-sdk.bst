kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.7-0-g1b811945dec85889daebdd38365593d8e3528202
config:
  options:
    target_arch: '%{arch}'
