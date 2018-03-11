kind: manual
sources:
- kind: zip
  url: http://www.argyllcms.com/Argyll_V2.0.0_src.zip
  ref: 5492896c040b406892864c467466ad6b50eb62954b5874ef0eb9174d1764ff41
  etag: '"cf56b8-5a0f9aab-afbe8b35380ea07;;;"'
depends:
- filename: core-deps/ftjam.bst
  type: build
- base.bst
config:
  build-commands:
  - jam -q -fJambase -j%{max-jobs}
  install-commands:
  - jam -q -fJambase -j%{max-jobs} DESTDIR=/buildstream/install PREFIX=/usr install
