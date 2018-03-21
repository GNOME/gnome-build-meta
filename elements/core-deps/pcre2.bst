kind: autotools
sources:
- kind: tar
  url: pcre:pcre2-10.30.tar.bz2
depends:
- base.bst
variables:
  conf-local: --enable-jit --enable-pcre2-8 --enable-pcre2-16 --enable-pcre2-32
