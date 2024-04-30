kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal/releases/download/1.18.4/xdg-desktop-portal-1.18.4.tar.xz
  ref: b858aa1e74e80c862790dbb912906e6eab8b1e4db9339cd759473af62b461e65

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
