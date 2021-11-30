kind: autotools
sources:
- kind: git_tag
  url: https://git.code.sf.net/p/gtkspell/gtkspell.git
  track: master
build-depends:
- core-deps/intltool.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
