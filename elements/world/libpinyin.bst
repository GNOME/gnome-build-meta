kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/releases/download/2.2.1/libpinyin-2.2.1.tar.gz
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model15.text.tar.gz
  base-dir: ''
  directory: data
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- world/kyotocabinet.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
  notparallel: True
