kind: make

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'semanage-*'
  exclude:
  - '*rc*'
  ref: selinux-sandbox-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/swig.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  command-subdir: libsemanage/src
  make-args: >-
    pywrap
  make-install-args: >-
    %{make-args}
    DESTDIR="%{install-root}"
    install-pywrap
