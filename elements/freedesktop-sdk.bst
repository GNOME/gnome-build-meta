kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: valentindavid/pipewire-experiment
  track-tags: false
config:
  options:
    target_arch: '%{arch}'
