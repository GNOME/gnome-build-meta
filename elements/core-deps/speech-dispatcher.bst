kind: autotools
sources:
- kind: tar
  url: speech_dispatcher:speech-dispatcher-0.8.8.tar.gz
depends:
- base.bst
variables:
  conf-local: --with-espeak
