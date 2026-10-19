kind: pyproject

sources:
- kind: anitya
  project-id: 7975
  url: github_files:OpenPrinting/pycups/releases/download/v{version}/pycups-{version}.tar.gz
  ref:
    version: 2.0.4
    sha256sum: 843e385c1dbf694996ca84ef02a7f30c28376035588f5fbeacd6bae005cf7c8d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/python3.bst
