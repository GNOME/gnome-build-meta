kind: pip

sources:
- kind: tar
  url: launchpad:brz/3.1/3.1.0/+download/breezy-3.1.0.tar.gz

  ref: 1eff207403f48898fa3b3ffa7a4275197c6c58fec105ef267caf1f5fd5a6c7be
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
