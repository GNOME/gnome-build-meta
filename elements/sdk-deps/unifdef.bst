kind: make

sources:
- kind: tar
  url: dotat:unifdef/unifdef-2.12.tar.gz
  ref: fba564a24db7b97ebe9329713ac970627b902e5e9e8b14e19e024eb6e278d10b

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-args: >-
    prefix="%{prefix}"
