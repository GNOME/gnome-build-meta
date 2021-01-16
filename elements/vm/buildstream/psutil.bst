kind: distutils

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/aa/3e/d18f2c04cf2b528e18515999b0c8e698c136db78f62df34eee89cee205f1/psutil-5.7.2.tar.gz
  ref: 90990af1c3c67195c44c9a889184f84f5b2320dce3ee3acbd054e3ba0b4a7beb
