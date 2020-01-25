kind: junction
sources:
- kind: git
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/
  track: 18.08
  ref: freedesktop-sdk-18.08.38-0-g27b393d69f8edade148424fdabeacb9b96e84128
  submodules:
    utils/buildstream-abi-checker:
      url: https://gitlab.com/freedesktop-sdk/buildstream-abi-checker
      checkout: false
config:
  options:
    target_arch: '%{arch}'
