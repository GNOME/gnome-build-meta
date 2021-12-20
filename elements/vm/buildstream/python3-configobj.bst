kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/64/61/079eb60459c44929e684fa7d9e2fdca403f67d64dd9dbac27296be2e0fab/configobj-5.0.6.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
