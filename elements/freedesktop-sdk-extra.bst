kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk-extra.git
  track: freedesktop-sdk-extra-26.08*
  ref: freedesktop-sdk-extra-26.08.4-0-g1c3778a286f87e2202d9af7b92542e5d49d50929

config:
  options:
    arch: '%{arch}'

  overrides:
    freedesktop-sdk.bst: freedesktop-sdk.bst
