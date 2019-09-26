kind: autotools
sources:
- kind: git_tag
  url: git_code_sf_net:p/gtkspell/gtkspell.git
  track: master
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
