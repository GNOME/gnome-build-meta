kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/3.37/adwaita-icon-theme-3.37.2.tar.xz
  ref: a594e7440971f860cc61b1b8291be15ffc1b8dd06a9f11485a5a7faf189bcf6b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
