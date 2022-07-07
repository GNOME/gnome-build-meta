kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: abderrahim/bst2
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
  overrides:
    plugins/bst-plugins-experimental.bst: plugins/bst-plugins-experimental.bst
    plugins/buildstream-plugins.bst: plugins/buildstream-plugins.bst
