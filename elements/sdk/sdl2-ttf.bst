kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.tar.gz
depends:
- sdk/sdl2.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
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
          - "%{libdir}/libSDL2_ttf.so"
