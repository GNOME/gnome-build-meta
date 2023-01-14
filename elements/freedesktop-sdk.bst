kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/22.08
  track-tags: true
  ref: freedesktop-sdk-22.08.5-0-g362fe115679a444c19c75ff2da330c57d57ef245
- kind: patch
  path: files/freedesktop-sdk/noopenh264-2.3.1.patch
- kind: patch
  path: files/freedesktop-sdk/0001-components-meson-updte-to-1.0.0.patch
- kind: patch
  path: files/freedesktop-sdk/dav1d-lto.patch
- kind: patch
  path: files/freedesktop-sdk/0001-wip-wireplumber-segfault-fix.patch
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
