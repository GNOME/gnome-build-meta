kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:benjaminp/six.git
  track: "*.*.*"
  ref: 1.17.0-0-gebd9b3af90247b8858d415a05e96e9ee61e48d07
