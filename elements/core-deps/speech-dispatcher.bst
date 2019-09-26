kind: autotools
sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.9.0/speech-dispatcher-0.9.0.tar.gz
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/dotconf.bst
- core-deps/espeak.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/sndfile.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-espeak
