kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.12-0-ga7778d9c98b5fbff712c2c8b17e3e804df9baaab
config:
  options:
    target_arch: '%{arch}'
