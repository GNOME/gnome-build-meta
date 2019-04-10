kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgnomekbd/3.26/libgnomekbd-3.26.1.tar.xz
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
