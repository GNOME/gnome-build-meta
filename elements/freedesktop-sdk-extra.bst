kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk-extra.git
  track: freedesktop-sdk-extra-26.08*
  ref: freedesktop-sdk-extra-26.08.2-0-g5d3da9777227844444db0e26a18e88e2a43f54e9

config:
  options:
    arch: '%{arch}'

  overrides:
    freedesktop-sdk.bst: freedesktop-sdk.bst
