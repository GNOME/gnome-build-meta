kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.11-0-gac942905b94dfeda1b2d0d45d8ca3f8110e0ebe3
config:
  options:
    target_arch: '%{arch}'
