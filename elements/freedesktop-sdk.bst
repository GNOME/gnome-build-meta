kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.29.1-0-gcb1af6b270034c15979daff5a7603d6372d430d3
config:
  options:
    target_arch: '%{arch}'
