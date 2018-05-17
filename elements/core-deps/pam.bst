kind: autotools
sources:
- kind: tar
  url: http://www.linux-pam.org/library/Linux-PAM-1.3.0.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  # polkit expects the headers there, and the configure script tries to put them there but is buggy
  conf-local: --includedir=/usr/include/security
  conf-aux: build-aux
