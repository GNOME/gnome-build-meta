kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.29-0-g730cb4ef1546eccd4227f36f439da46a28b8f224
config:
  options:
    target_arch: '%{arch}'
