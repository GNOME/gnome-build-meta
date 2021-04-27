kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/62/6d/681466a726a851faf4a175d0d73675cc19470a31be414e7f46fc776027e5/pytest-runner-5.3.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-wheel.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
