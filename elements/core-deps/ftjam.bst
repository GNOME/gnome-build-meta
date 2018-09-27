kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:project/freetype/ftjam/2.5.2/ftjam-2.5.2.tar.bz2
  ref: e89773500a92912de918e9febffabe4b6bce79d69af194435f4e032b8a6d66a3
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: builds/unix/
