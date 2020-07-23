kind: import

runtime-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: tar
  url: https://dl.google.com/go/go1.14.6.linux-amd64.tar.gz
  directory: /usr/local/go
