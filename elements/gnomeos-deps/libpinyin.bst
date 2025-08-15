kind: autotools

sources:
- kind: tar
  url: 
    github_files:libpinyin/libpinyin/releases/download/2.10.2/libpinyin-2.10.2.tar.gz
  ref: 2c29d9dfd1e0dc521fa654b300cc5560bad82d6bed42e4b3ec9d71098fb26d80
- kind: tar
  url: sourceforge:libpinyin/models/model20.text.tar.gz
  ref: 59c68e89d43ff85f5a309489499cbcde282d2b04bd91888734884b7defcb1155
  base-dir: ''
  directory: data

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- gnomeos-deps/kyotocabinet.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-dbm=KyotoCabinet
  notparallel: true
