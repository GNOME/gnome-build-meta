kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-terminal.git
  track: master

build-depends:
- core/gnome-shell.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/dconf.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
