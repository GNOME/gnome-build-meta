kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.27-64-g2709c556eeffb688e3fc6c9700e5e6457577a751
config:
  options:
    target_arch: '%{arch}'
