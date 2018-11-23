kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.20-8-ge325d81142fa460ac94ec805e1032b2573d4a91c
config:
  options:
    target_arch: '%{arch}'
