kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-21.08beta.1-53-gdb8383ad95228527409bcf302d3a72cedfe3a21c
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
