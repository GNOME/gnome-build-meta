kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.2.tar.gz
depends:
- sdk/sdl2.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-jpg-shared --disable-png-shared --disable-tif-shared --disable-webp-shared
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{libdir}/libSDL2_image.so"

