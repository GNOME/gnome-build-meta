kind: import

sources:
- kind: local
  path: files/gnomeos/save-perms/save-perms.py

depends:
- freedesktop-sdk.bst:components/python3.bst

config:
  target: /usr/bin
