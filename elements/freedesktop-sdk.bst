kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: 19.08
  track-tags: true
- kind: patch
  path: files/freedesktop-sdk/kernel-live-boot.patch
- kind: patch
  path: files/freedesktop-sdk/prepare-image-param.patch
config:
  options:
    target_arch: '%{arch}'
