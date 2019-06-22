kind: autotools
sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.9.0/speech-dispatcher-0.9.0.tar.gz
depends:
- core-deps/dotconf.bst
- core-deps/espeak.bst
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --with-espeak
