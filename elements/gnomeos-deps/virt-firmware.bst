kind: pyproject

sources:
- kind: git_repo
  url: gitlab:kraxel/virt-firmware
  track: v*
  ref: v25.12-0-gdc4d64c793823a4edee80c55726744ec48243211

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-pefile.bst
- freedesktop-sdk.bst:components/python3-cryptography.bst
