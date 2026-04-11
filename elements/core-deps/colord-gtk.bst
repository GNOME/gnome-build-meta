kind: meson

sources:
- kind: git_repo
  url: github:hughsie/colord-gtk.git
  track: '*.*.*'
  ref: 0.3.1-0-gb5a0ca3c512277842011757d9ce2efbfd6a8d888
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dman=false
    -Dvapi=true
