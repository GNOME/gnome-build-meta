kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgnomekbd/3.26/libgnomekbd-3.26.1.tar.xz
  ref: f7ca02631576e9b88aee1b1bae37ac1488b80ee7975f20a97f29e761a7172679
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
