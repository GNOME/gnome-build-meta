kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 43-10-g49bfcee8dbfbf5d9552913fbf6fa48bee3d426df

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
