kind: distutils

depends:
- freedesktop-sdk.bst:components/python3.bst
- sdk-deps/python-smartypants.bst

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/8a/bf/64959d6187d42472acb846bcf462347c9124952c05bd57e5769d5f28f9a6/typogrify-2.0.7.tar.gz
