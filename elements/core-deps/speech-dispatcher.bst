kind: autotools
sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.10.2/speech-dispatcher-0.10.2.tar.gz
  ref: b06319f201e15e56c6296653af5bcfc300cb348e972d517df8b06eac77eae2dc
- kind: patch
  path: files/speech-dispatcher/Fix-build-after-glib-e38982df.patch
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/texinfo.bst
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
config:
  install-commands:
    (>):
    - |
      rm '%{install-root}%{infodir}/dir'
