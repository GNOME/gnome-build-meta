kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.tar.gz
  ref: 34db5e20bcf64e7071fe9ae25acaa7d72bdc4f11ab3ce59acc768ab62fe39276
depends:
- sdk/sdl2.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{libdir}/libSDL2_ttf.so"
