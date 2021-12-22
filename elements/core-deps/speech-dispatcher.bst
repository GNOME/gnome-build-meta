kind: autotools

sources:
- kind: tar
  url: github_com:brailcom/speechd/releases/download/0.11.0/speech-dispatcher-0.11.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/dotconf.bst
- core-deps/espeak-ng.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/sndfile.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-espeak-ng
    --with-pulse
    --with-oss=no

config:
  install-commands:
    (>):
    - rm '%{install-root}%{infodir}/dir'
