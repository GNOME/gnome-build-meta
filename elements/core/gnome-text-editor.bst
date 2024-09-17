kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/47/gnome-text-editor-47.0.tar.xz
  ref: 0304961974bdacc7e6e8d146dadc949527df99b2823582c8d1ba8b33d25d4217
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
- freedesktop-sdk.bst:bootstrap-import.bst
