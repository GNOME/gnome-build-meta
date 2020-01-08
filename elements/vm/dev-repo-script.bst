kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- core-deps/ostree.bst
- freedesktop-sdk.bst:components/curl.bst

config:
  build-commands:
    - sed -i "s/@@ARCH@@/%{arch}/g" enable-developer-repository

  install-commands:
  - install -Dm755 -t "%{install-root}%{bindir}" enable-developer-repository

sources:
- kind: local
  path: files/vm/enable-developer-repository
