kind: make

sources:
- kind: git_tag
  url: github_com:umlaeute/v4l2loopback.git
  track: main
  track-tags: true

build-depends:
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/help2man.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  install-params: >-
      DESTDIR='%{install-root}'
      PREFIX='%{prefix}'
      INSTALL_MOD_PATH='%{install-root}%{prefix}'
  make-params: >-
      KERNELRELEASE="$(ls /usr/lib/modules)"
  make: make %{make-params}
  make-install: make -j1 install-all %{install-params} %{make-params}

public:
  bst:
    split-rules:
      modules:
      - "%{indep-libdir}/modules/**"
      utils:
      - "%{bindir}/**"
      - "%{datadir}/**"
