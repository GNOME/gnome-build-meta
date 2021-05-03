kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.38/file-roller-3.38.1.tar.xz
  ref: 94a0130e12d321aa119793a14d09716523e2e4a61f29570cee53fd88dd6abc57
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
