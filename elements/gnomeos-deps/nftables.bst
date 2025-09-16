kind: autotools

sources:
- kind: git_repo
  url: netfilter:nftables
  track: 'v*'
  ref: v1.1.5-0-g5fb748243550f857bb82cddcdce642f8bf269026

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

depends:
- freedesktop-sdk.bst:components/gmp.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/jansson.bst
- freedesktop-sdk.bst:components/libmnl.bst
- freedesktop-sdk.bst:components/libnftnl.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  conf-local: >-
    --with-cli=readline
    --with-xtables
    --with-json

config:
  build-commands:
    (>):
    - |
      python3 -P -m build --no-isolation --wheel --outdir dist py

  install-commands:
    (>):
    - |
      python3 -P -m installer dist/*.whl --destdir '%{install-root}'
