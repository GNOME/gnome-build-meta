kind: stack

depends:
- freedesktop-sdk.bst:components/python3.bst

public:
  bst:
    integration-commands:
    - ln -s python3 /usr/bin/python2
