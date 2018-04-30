kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/archive/2.0.0.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model14.text.tar.gz
  base-dir: ''
  directory: data
depends:
- core-deps/kyotocabinet.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- base.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
