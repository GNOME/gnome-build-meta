kind: pip

sources:
- kind: tar
  url: pypi:de/42/c4218857c39ebc9b13c4a5c8d684e4d873ea0c680927ad1cc20e79db258a/dulwich-0.20.33.tar.gz

  ref: 9537abef8cabee96b0c09af950661b883057879a788d98f1187b79e32fee9650
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3-certifi.bst
- freedesktop-sdk.bst:components/python3-urllib3.bst
- freedesktop-sdk.bst:components/python3.bst
