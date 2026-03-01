kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/50/gnome-text-editor-50.rc.tar.xz
  ref: a734f64eff1fea564d8217a025ee3d124be47faedb76cd8a57c2882f80cf76e2
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
