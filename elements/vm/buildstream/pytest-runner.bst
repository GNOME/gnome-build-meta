kind: distutils
sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/62/6d/681466a726a851faf4a175d0d73675cc19470a31be414e7f46fc776027e5/pytest-runner-5.3.0.tar.gz
  ref: ca3f58ff4957e8be6c54c55d575b235725cbbcf4dc0d5091c29c6444cfc8a5fe
build-depends:
- freedesktop-sdk.bst:components/python3-wheel.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
