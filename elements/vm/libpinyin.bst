kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/releases/download/2.6.0/libpinyin-2.6.0.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model17.text.tar.gz
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
