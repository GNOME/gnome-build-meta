kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.19-0-gcb95aec6b75e3249cd5279807b2267a2260195d7
config:
  options:
    target_arch: '%{arch}'
