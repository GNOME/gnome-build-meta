kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/45/gnome-text-editor-45.beta.tar.xz
  ref: 635e43bc2d1cb506abd00dedceaa1456ea63636326826f954144c68aad5079bd
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
