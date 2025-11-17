kind: make

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'libsepol-*'
  exclude:
  - '*rc*'
  ref: libsepol-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst

depends:
- freedesktop-sdk.bst:bootstrap/pcre2.bst

variables:
  command-subdir: libsepol
  make-args: >-
    USE_PCRE2=y
    DISABLE_SHARED=y
    LIBDIR='%{libdir}'
    SBINDIR='%{sbindir}'

config:
  install-commands:
  - |
    make -C src install DESTDIR='%{install-root}' -j1 %{make-args}

  - |
    rm '%{install-root}%{libdir}/pkgconfig/libsepol.pc'
