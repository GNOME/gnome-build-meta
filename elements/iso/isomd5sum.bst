kind: manual

sources:
- kind: tar
  url: github_com:rhinstaller/isomd5sum/archive/1.2.3.tar.gz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3.bst

config:
  build-commands:
  - |
    make

  install-commands:
  - |
    make -j1 install DESTDIR="%{install-root}" LIBDIR="%{libdir}"
