kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: release/20.08
  track-tags: true
  ref: freedesktop-sdk-20.08.2-0-ga90eb5646177a599ae7f69027938abe501c96b1b
config:
  options:
    target_arch: '%{arch}'
