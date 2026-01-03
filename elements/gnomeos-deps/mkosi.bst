kind: pyproject

sources:
- kind: git_repo
  url: github:systemd/mkosi
  track: main
  ref: v26-64-gae2d88d4632eef73664a976e54a3ca960755124c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
