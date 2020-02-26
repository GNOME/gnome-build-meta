kind: make

sources:
- kind: tar
  url: github_com:rhinstaller/isomd5sum/archive/1.2.3.tar.gz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  # When building in parallel, it might fail with errors about missing
  # symbols.
  notparallel: true
  make: make
  make-install: make -j1 install DESTDIR="%{install-root}" LIBDIR="%{libdir}"
