kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libnma.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
