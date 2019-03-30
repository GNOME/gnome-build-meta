kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/releases/download/2.3.0/libpinyin-2.3.0.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model17.text.tar.gz
  base-dir: ''
  directory: data
depends:
- sdk/glib.bst
- world/kyotocabinet.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
  notparallel: True
