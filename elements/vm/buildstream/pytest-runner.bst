kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/5b/82/1462f86e6c3600f2471d5f552fcc31e39f17717023df4bab712b4a9db1b3/pytest-runner-5.2.tar.gz

  ref: 96c7e73ead7b93e388c5d614770d2bae6526efd997757d3543fe17b557a0942b
build-depends:
- freedesktop-sdk.bst:components/python3-wheel.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
