kind: autotools
sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.9.0/speech-dispatcher-0.9.0.tar.gz
  ref: 73b924f42fcc2155a452693320956f7075b71750023ea21e8bb79822c0caa2f9
depends:
- sdk/glib.bst
- core-deps/dotconf.bst
- core-deps/espeak.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/sndfile.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --with-espeak
