kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal/releases/download/1.15.0/xdg-desktop-portal-1.15.0.tar.xz

build-depends:
- core-deps/flatpak.bst
- core-deps/libportal.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/pipewire-daemon.bst
- sdk/geoclue.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
