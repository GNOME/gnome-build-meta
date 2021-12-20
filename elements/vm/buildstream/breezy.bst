kind: distutils

sources:
- kind: tar
  url: https://launchpad.net/brz/3.1/3.1.0/+download/breezy-3.1.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-six.bst
- vm/buildstream/python3-configobj.bst

runtime-depends:
- vm/buildstream/python3-dulwich.bst
- vm/buildstream/python3-fastimport.bst

config:
  install-commands:
    (>):
    - ln -s brz "%{install-root}%{bindir}/bzr"
