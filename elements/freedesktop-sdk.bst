kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: c5985eaf84111635253f6dca6aff38e1939660f0 # freedesktop-sdk-18.08.18
config:
  options:
    target_arch: '%{arch}'
