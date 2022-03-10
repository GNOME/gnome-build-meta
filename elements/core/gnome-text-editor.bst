kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/42/gnome-text-editor-42.rc1.tar.xz
  ref: 24b09030520f6f74333f2e6aa0d98dd4fdfa941c7c42c5e4e2b5bcd23d79326a
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
