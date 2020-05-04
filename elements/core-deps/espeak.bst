kind: manual
sources:
- kind: zip
  url: sourceforge_net:espeak/files/espeak/espeak-1.48/espeak-1.48.04-source.zip
depends:
- core-deps/portaudio.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  configure-commands:
  - cp -f src/portaudio19.h src/portaudio.h
  build-commands:
  - cd src && make CXXFLAGS=-Wno-narrowing
  install-commands:
  - cd src && make DESTDIR=%{install-root} install
