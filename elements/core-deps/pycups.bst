kind: pip

sources:
- kind: tar
  url: github_files:OpenPrinting/pycups/releases/download/v2.0.1/pycups-2.0.1.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/python3.bst
