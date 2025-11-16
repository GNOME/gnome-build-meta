kind: import

sources:
- kind: generated
  path: import-pubring.pgp

runtime-depends:
- freedesktop-sdk.bst:components/systemd.bst

config:
  target: /usr/lib/systemd

public:
  bst:
    overlap-whitelist:
    - /usr/lib/systemd/import-pubring.pgp
