kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/archive/2.0.0.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model14.text.tar.gz
  base-dir: ''
  directory: data
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/kyotocabinet.bst
- base.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
