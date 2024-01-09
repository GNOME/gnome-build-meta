kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-text-editor.git
  track: main
  ref: 46.alpha-1-g7dcd847d4d92d34019a983660c5b29bebd6d4706

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/editorconfig-core-c.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
