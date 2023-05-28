kind: pip

sources:
- kind: tar
  url: pypi:4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz
  ref: 0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst
- freedesktop-sdk.bst:components/python3-wheel.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-six.bst

variables:
  pip-args: >-
    --no-build-isolation
    --no-deps
    --root=%{install-root}
    --prefix=%{prefix}
    --no-index

config:
  install-commands:
    - |
      python3 -m pip install %{pip-args} .
