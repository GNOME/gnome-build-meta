kind: stack

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

public:
  bst:
    integration-commands:
    - ln -s python3 /usr/bin/python2
    - ln -s python2 /usr/bin/python
