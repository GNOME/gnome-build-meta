kind: autotools
sources:
- kind: tar
  url: speech_dispatcher:speech-dispatcher-0.8.8.tar.gz
  ref: 3c2a89800d73403192b9d424a604f0e614c58db390428355a3b1c7c401986cf3
depends:
- base.bst
variables:
  conf-local: --with-espeak
