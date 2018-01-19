kind: autotools
sources:
- kind: tar
  url: pcre:pcre2-10.30.tar.bz2
  ref: 90bd41c605d30e3745771eb81928d779f158081a51b2f314bbcc1f73de5773db
depends:
- base.bst
variables:
  conf-local: --enable-jit --enable-pcre2-8 --enable-pcre2-16 --enable-pcre2-32
