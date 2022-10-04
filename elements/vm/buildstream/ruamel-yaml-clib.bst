kind: pip

sources:
- kind: tar
  url: pypi:8b/25/08e5ad2431a028d0723ca5540b3af6a32f58f25e83c6dda4d0fcef7288a3/ruamel.yaml.clib-0.2.6.tar.gz
  ref: 4ff604ce439abb20794f05613c374759ce10e3595d1867764dd1ae675b85acbd

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
