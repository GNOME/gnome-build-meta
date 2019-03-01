kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.28-0-g29cf2127554cdd83a1532afa53824b23cee2eed3
config:
  options:
    target_arch: '%{arch}'
