depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 1a8fed1197c3b99c35f403066bb344a26224d292afc048cfdfc4ccd5690a0693
  url: https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-1.10.0.tar.bz2
variables:
  conf-aux: build-aux
