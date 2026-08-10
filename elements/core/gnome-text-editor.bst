kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/51/gnome-text-editor-51.beta.tar.xz
  ref: 5588dd99bebf27369361ff1fda1db37570199eda165e55d0d332197c1b540274
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/editorconfig-core-c.bst
- core-deps/libspelling.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
