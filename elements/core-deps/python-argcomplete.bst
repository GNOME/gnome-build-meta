kind: pyproject

sources:
- kind: tar
  url: 
    pypi:16/0f/861e168fc813c56a78b35f3c30d91c6757d1fd185af1110f1aec784b35d0/argcomplete-3.6.2.tar.gz
  ref: d0519b1bc867f5f4f4713c41ad0aba73a4a5f007449716b16f385f2166dc6adf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst
- freedesktop-sdk.bst:components/python3-hatch-vcs.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''
