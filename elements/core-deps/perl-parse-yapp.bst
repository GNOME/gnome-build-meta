kind: manual

sources:
- kind: tar
  url: tar_cpan_metacpan_org:authors/id/W/WB/WBRASWELL/Parse-Yapp-1.21.tar.gz

depends:
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  configure-commands:
  - perl Makefile.PL PREFIX="%{prefix}" DESTDIR="%{install-root}"
  install-commands:
  - make -j1 install
