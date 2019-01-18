kind: autotools
sources:
- kind: tar
  url: speech_dispatcher:speech-dispatcher-0.8.8.tar.gz
depends:
- core-deps/dotconf.bst
- core-deps/espeak.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-espeak
