kind: make

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'policycoreutils-*'
  exclude:
  - '*rc*'
  ref: policycoreutils-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/gettext.bst

depends:
- freedesktop-sdk.bst:components/libsemanage.bst

variables:
  command-subdir: policycoreutils
  make-args: >-
    LIBSELINUX_LDLIBS=-lselinux
    LIBSEMANAGE_LDLIBS=-lsemanage
    SBINDIR='%{bindir}'
