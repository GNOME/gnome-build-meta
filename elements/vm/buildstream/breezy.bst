kind: pip

sources:
- kind: tar
  url: pypi:e4/93/101bb70d7e6c171c7a3a99d50d9f9b64a17a5845cfd6c8ecb95d844bac68/breezy-3.2.1.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- vm/buildstream/python3-configobj.bst
- vm/buildstream/python3-dulwich.bst
- vm/buildstream/python3-fastimport.bst
- vm/buildstream/python3-patiencediff.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:components/python3.bst

config:
  install-commands:
    (>):
    - ln -s brz "%{install-root}%{bindir}/bzr"
