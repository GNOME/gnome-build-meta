kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgnomekbd/3.26/libgnomekbd-3.26.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
