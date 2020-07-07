kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: true
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == "ppc64le":
        target_arch: "powerpc64le"
        bootstrap_build_arch: "powerpc64le"
