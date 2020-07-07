kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: true
  ref: freedesktop-sdk-20.08beta.1-0-g1c12d6058b6d15370bccea897db39bb63f2d0ea2
config:
  options:
    target_arch: '%{arch}'
