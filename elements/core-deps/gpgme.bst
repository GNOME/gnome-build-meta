kind: autotools
sources:
- kind: tar
  url: https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-1.10.0.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
