kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/50/gnome-backgrounds-50.alpha.tar.xz
  ref: 7bbed727bfc0a5e401d0b35f5972f0ca5b8fdd459b9653547b27ca3b505eec9c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
