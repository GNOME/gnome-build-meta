depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
- core-deps/dotconf.bst
- core-deps/espeak.bst
kind: autotools
sources:
- kind: tar
  ref: 3c2a89800d73403192b9d424a604f0e614c58db390428355a3b1c7c401986cf3
  url: speech_dispatcher:speech-dispatcher-0.8.8.tar.gz
variables:
  conf-local: --with-espeak
