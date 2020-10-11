kind: cmake

sources:
- kind: tar
  url: github_com:fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/pcre2.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DCMAKE_INSTALL_SYSCONFDIR=%{sysconfdir}
    -DCURSES_NEED_NCURSES=TRUE

public:
  bst:
    integration-commands:
    - echo %{bindir}/fish >> /etc/shells
