kind: autotools
sources:
- kind: tar
  url: github_tar:libpinyin/libpinyin/archive/2.0.0.tar.gz
  ref: 0b78b483c179f6998a0df582aea3d77340bb1e9d887b52ed8fae677d535fd19d
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model14.text.tar.gz
  ref: 185f0f175a90bcfc55cf3cf6ceff8d447a6269492c0ca1a1fc0748ea2c181363
  base-dir: ''
  directory: data
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/kyotocabinet.bst
- base.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
