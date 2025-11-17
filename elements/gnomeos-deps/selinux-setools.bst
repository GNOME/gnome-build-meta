kind: pyproject

sources:
- kind: git_repo
  url: github:SELinuxProject/setools.git
  track: '*.*'
  ref: 4.6.0-0-gdfb95f338264f2d7ecab46b39479e4c29e44c09e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/cython.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
