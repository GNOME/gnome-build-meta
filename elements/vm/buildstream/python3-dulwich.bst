kind: pip

sources:
- kind: tar
  url: pypi:31/02/791c17b92e6d04c43f9b318c95a3f3c3e1ea718aa72ad95b9dac147895fa/dulwich-0.20.21.tar.gz

  ref: ac764c9a9b80fa61afe3404d5270c5060aa57f7f087b11a95395d3b76f3b71fd
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3-certifi.bst
- freedesktop-sdk.bst:components/python3-urllib3.bst
- freedesktop-sdk.bst:components/python3.bst
