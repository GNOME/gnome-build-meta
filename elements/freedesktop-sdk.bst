kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: true
- kind: patch
  path: files/0001-components-mozjs.bst-add-patch-for-API-needed-by-gjs.patch
config:
  options:
    target_arch: '%{arch}'
