kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.1.tar.gz
depends:
- sdk/sdl2.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{libdir}/libSDL2_mixer.so"
