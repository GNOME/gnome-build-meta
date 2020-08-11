kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: true
  ref: freedesktop-sdk-20.08beta.6-0-g9f6c0907f2b6a7dfb5a6e15f5a2bdcf22e5a4162
- kind: patch
  path: files/0001-components-mozjs.bst-add-patch-for-API-needed-by-gjs.patch
config:
  options:
    target_arch: '%{arch}'
