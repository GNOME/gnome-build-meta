kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/22.08
  track-tags: true
  ref: freedesktop-sdk-22.08.2.1-135-g2901dcd26c6f2dcaf25c416536d9a6c30b28bf03
- kind: patch
  path: files/freedesktop-sdk/noopenh264-2.3.1.patch
- kind: patch
  path: files/freedesktop-sdk/libnghttp2-1.50.patch
config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch in ('x86_64', 'i686'):
        bootstrap_build_arch: 'x86_64'
    - arch in ('aarch64', 'arm'):
        bootstrap_build_arch: 'aarch64'
    - arch == "ppc64le":
        bootstrap_build_arch: "ppc64le"
    - arch == "riscv64":
        bootstrap_build_arch: "x86_64"
