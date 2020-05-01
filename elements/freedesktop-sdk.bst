kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.9-75-g89eda829efa91d3547694b4529b5995a60b265bb
config:
  options:
    target_arch: '%{arch}'
