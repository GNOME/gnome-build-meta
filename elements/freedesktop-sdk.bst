kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: 37571a8ab8a42553f7e37b9b81718613ee66c9c4 # freedesktop-sdk-18.08.17
config:
  options:
    target_arch: '%{arch}'
