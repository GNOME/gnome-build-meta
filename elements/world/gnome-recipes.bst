kind: meson
sources:
- kind: git_repo
  url: gnome:recipes.git
  track: master
- kind: git_module
  url: gnome:libgd.git
  path: subprojects/libgd

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
