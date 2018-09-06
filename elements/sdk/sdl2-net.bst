kind: autotools
sources:
- kind: tar
  url: https://www.libsdl.org/projects/SDL_net/release/SDL2_net-2.0.1.tar.gz
  ref: 15ce8a7e5a23dafe8177c8df6e6c79b6749a03fff1e8196742d3571657609d21
depends:
- sdk/sdl2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --disable-gui
public:
  bst:
    split-rules:
      devel:
        (>):
          - "%{libdir}/libSDL2_net.so"

