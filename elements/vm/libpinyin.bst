kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/releases/download/2.6.0/libpinyin-2.6.0.tar.gz
  ref: 9cdc06f88a3d3c4d9a9d82b1cd1ae99429a2cc98418fbcaf8e7045b29fac0582
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model17.text.tar.gz
  base-dir: ''
  directory: data
  ref: e017278ab022bca065a744ccbbede94db8932ec3fb64592a1693627db9b662cd
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
