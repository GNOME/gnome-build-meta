kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/42/gnome-shell-extensions-42.3.tar.xz
  ref: 0ec2bea32e9f28ac805891f613194d48fc0c091f09c48313065a3884f72273fc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dextension_set=classic
