kind: manual
sources:
- kind: zip
  url: downloads.sourceforge.net:espeak/espeak/espeak-1.48/espeak-1.48.04-source.zip
depends:
- base.bst
- core-deps/portaudio.bst
config:
  configure-commands:
  - cp -f src/portaudio19.h src/portaudio.h
  build-commands:
  - cd src && make CXXFLAGS=-Wno-narrowing
  install-commands:
  - cd src && make DESTDIR=%{install-root} install
