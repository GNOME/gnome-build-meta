kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal/releases/download/1.17.2/xdg-desktop-portal-1.17.2.tar.xz
  ref: 1e861eb991e60e56b06c64dc03284c02f9913f9a426d8955f8d529ff8f3f6d96

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
- freedesktop-sdk.bst:components/python3-docutils.bst
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
