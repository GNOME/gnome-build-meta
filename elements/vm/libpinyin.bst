kind: autotools

sources:
- kind: tar
  url: github_files:libpinyin/libpinyin/releases/download/2.6.1/libpinyin-2.6.1.tar.gz
- kind: tar
  url: sourceforge:libpinyin/models/model17.text.tar.gz
  base-dir: ''
  directory: data

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- vm/kyotocabinet.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-dbm=KyotoCabinet
  notparallel: true
