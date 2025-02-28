kind: pyproject

sources:
- kind: tar
  url: pypi:0c/be/6c23d80cb966fb8f83fb1ebfb988351ae6b0554d0c3a613ee4531c026597/argcomplete-3.5.3.tar.gz
  ref: c12bf50eded8aebb298c7b7da7a5ff3ee24dffd9f5281867dfe1424b58c55392

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst
- freedesktop-sdk.bst:components/python3-hatch-vcs.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''
