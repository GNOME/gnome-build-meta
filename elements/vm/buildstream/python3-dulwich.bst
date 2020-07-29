kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/b3/34/adcd6646c5ed59a1206216d4a418121be57df3406f7a46570112db57ba6c/dulwich-0.20.5.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-certifi.bst
- freedesktop-sdk.bst:components/python3-urllib3.bst
