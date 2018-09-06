kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.2.tar.gz
  ref: 72df075aef91fc4585098ea7e0b072d416ec7599aa10473719fbe51e9b8f6ce8
depends:
- sdk/sdl2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --disable-jpg-shared --disable-png-shared --disable-tif-shared --disable-webp-shared
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{libdir}/libSDL2_image.so"

