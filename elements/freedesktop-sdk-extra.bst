kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk-extra.git
  track: freedesktop-sdk-extra-26.08*
  ref: freedesktop-sdk-extra-26.08.3-0-g7825d44d436a51dcbf7d226904348e810c63bf75

config:
  options:
    arch: '%{arch}'

  overrides:
    freedesktop-sdk.bst: freedesktop-sdk.bst
