kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: true
  ref: freedesktop-sdk-22.08beta.4-0-g3d643403ff095396dddeef6732d2230711f7d933
- kind: patch
  path: files/freedesktop-sdk/0001-polkit-patch-to-print-admin-rule-errors.patch
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
