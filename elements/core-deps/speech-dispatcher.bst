kind: autotools
sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.9.0/speech-dispatcher-0.9.0.tar.gz
  ref: 73b924f42fcc2155a452693320956f7075b71750023ea21e8bb79822c0caa2f9
- kind: patch
  path: files/speech-dispatcher/Fix-build-after-glib-e38982df.patch
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

  local_flags: -fcommon
