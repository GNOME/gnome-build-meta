kind: import

sources:
- kind: local
  path: files/boot-keys/import-pubring.gpg

runtime-depends:
- freedesktop-sdk.bst:components/systemd.bst

config:
  target: /usr/lib/systemd

public:
  bst:
    overlap-whitelist:
    - /usr/lib/systemd/import-pubring.gpg
