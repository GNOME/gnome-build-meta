kind: pyproject

sources:
- kind: tar
  url: pypi:78/c5/3b3c62223f72e2360737fd2a57c30e5b2adecd85e70276879609a7403334/pefile-2023.2.7.tar.gz
  ref: 82e6114004b3d6911c77c3953e3838654b04511b8b66e8583db70c65998017dc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
