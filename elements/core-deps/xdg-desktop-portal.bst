kind: meson

sources:
- kind: tar
  url: github_files:flatpak/xdg-desktop-portal/releases/download/1.19.1/xdg-desktop-portal-1.19.1.tar.xz
  ref: a09ad4d8b0697b6670ce75437b61a620373641625b4e505c4a012273f5000cea
- kind: patch
  path: patches/xdg-desktop-portal/1548.patch
- kind: patch
  path: patches/xdg-desktop-portal/1533.patch
- kind: patch
  path: patches/xdg-desktop-portal/1624.patch

build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libportal.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      interfaces:
      - "%{datadir}/pkgconfig/*.pc"
      - "%{datadir}/dbus-1/interfaces"
      - "%{datadir}/dbus-1/interfaces/org.freedesktop.portal*"

variables:
  # Documentation needs sphinx plugins that aren't in freedesktop-sdk
  # sphinxext.opengraph, sphinx_copybutton, furo
  meson-local: >-
    -Dpytest=disabled
    -Dtests=disabled
    -Ddocumentation=disabled
