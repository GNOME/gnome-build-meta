kind: autotools
sources:
- kind: tar
  url: http://www.linux-pam.org/library/Linux-PAM-1.3.0.tar.bz2
  ref: 241aed1ef522f66ed672719ecf2205ec513fd0075ed80cda8e086a5b1a01d1bb
  etag: '"13e124-531d8d95cfc40"'
depends:
- base.bst
variables:
# polkit expects the headers there, and the configure script tries to put them there but is buggy
  conf-local: --includedir=/usr/include/security
