kind: make

sources:
- kind: tar
  url: https://snowballstem.org/dist/libstemmer_c-2.2.0.tar.gz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - install -D include/libstemmer.h -t %{install-root}%{includedir}
  - install -D libstemmer.a -t %{install-root}%{libdir}
