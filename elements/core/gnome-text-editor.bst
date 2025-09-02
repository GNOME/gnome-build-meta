kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/49/gnome-text-editor-49.rc.tar.xz
  ref: 5a92a5cbba055c12e3da957f171223be689b6a80e7825701484739f36434b431
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/editorconfig-core-c.bst
- core-deps/libspelling.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
