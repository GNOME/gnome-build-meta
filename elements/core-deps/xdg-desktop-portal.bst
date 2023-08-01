kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal/releases/download/1.17.0/xdg-desktop-portal-1.17.0.tar.xz
  ref: cafa7c4289decf203d21829abbbefc3e968c9975664685e151db2c701b532a8b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libportal.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      interfaces:
      - "%{datadir}/pkgconfig/*.pc"
      - "%{datadir}/dbus-1/interfaces"
      - "%{datadir}/dbus-1/interfaces/org.freedesktop.portal*"

variables:
  meson-local: >-
    -Dpytest=disabled
