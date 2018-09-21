kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/libpinyin/archive/2.2.0.tar.gz
  ref: 334bc20cae54ed8ab158a9ab7845f3b4148615d71a278f258fd1d5834b2b75cf
- kind: tar
  url: downloads.sourceforge.net:libpinyin/models/model14.text.tar.gz
  base-dir: ''
  directory: data
  ref: 185f0f175a90bcfc55cf3cf6ceff8d447a6269492c0ca1a1fc0748ea2c181363
depends:
- core-deps/kyotocabinet.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-dbm=KyotoCabinet
