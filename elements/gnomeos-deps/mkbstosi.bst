kind: pyproject

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/mkbstosi
  track: main
  ref: ff17db1bbed14c41bfd28551a5152ef288c83da9
- kind: local
  path: files/gnomeos/mkbstosi-tmpfiles.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- gnomeos-deps/mkosi.bst

config:
  install-commands:
    (>):
    - install -Dm644 mkbstosi-tmpfiles.conf %{install-root}%{datadir}/user-tmpfiles.d/mkbstosi.conf
