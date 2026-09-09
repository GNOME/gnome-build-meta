kind: autotools

sources:
- kind: git_repo
  url: github:sahlberg/libnfs.git
  track: '*.*'
  ref: libnfs-7.0.2-0-gb6a27bed572ee94a5e4d9db0d96e524455d86a42

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/gssproxy.bst
