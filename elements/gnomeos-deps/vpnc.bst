kind: make

sources:
- kind: git_repo
  url: github:streambinder/vpnc.git
  ref: d0fd23d9432d54e7f354ecf3ced1e35d92d3dbde

variables:
  make-args: >-
    PREFIX='%{prefix}'
    SCRIPT_PATH='/usr/share/vpnc-script'
  make: make %{make-args}
  make-install: make -j1 DESTDIR='%{install-root}' %{make-args}

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/gnutls.bst
- gnomeos-deps/vpnc-scripts.bst
