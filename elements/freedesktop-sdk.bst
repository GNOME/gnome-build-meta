kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: 32c11bfcbaedd5ebf5cf3dd67fbda521c9b8ebe9 # freedesktop-sdk-18.08.16
config:
  options:
    target_arch: '%{arch}'
    (?):
      - arch == 'i686':
          target_arch: 'i686'
