kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gexiv2/0.10/gexiv2-0.10.8.tar.xz
  ref: 81c528fd1e5e03577acd80fb77798223945f043fd1d4e06920c71202eea90801
depends:
- core-deps/exiv2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
