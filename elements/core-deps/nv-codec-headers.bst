kind: make

sources:
- kind: tar
  url: github_files:FFmpeg/nv-codec-headers/releases/download/n11.1.5.1/nv-codec-headers-11.1.5.1.tar.gz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  make-install: make -j1 PREFIX="%{prefix}" LIBDIR="%{lib}" DESTDIR="%{install-root}" install
