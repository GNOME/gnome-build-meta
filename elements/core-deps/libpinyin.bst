kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/releases/download/2.2.1/libpinyin-2.2.1.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model15.text.tar.gz
  base-dir: ''
  directory: data
depends:
- core-deps/kyotocabinet.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
  notparallel: True
