kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.27-0-gcde04cd2d4016ae73e85e89871a86c9f094c174c
config:
  options:
    target_arch: '%{arch}'
