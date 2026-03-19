kind: meson

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/flatpak-minimal.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pipewire.bst

variables:
  meson-local: >-
    -Dtests=disabled
    -Ddocumentation=disabled
    -Dman-pages=disabled

public:
  bst:
    split-rules:
      interfaces:
      - "%{datadir}/pkgconfig/*.pc"
      - "%{datadir}/dbus-1/interfaces"
      - "%{datadir}/dbus-1/interfaces/org.freedesktop.portal*"
      xdp-license:
      - "%{project_licensedir}"
      - "%{project_licensedir}/**"
  cpe:
    product: xdg-desktop-portal

sources:
- kind: git_repo
  url: github:flatpak/xdg-desktop-portal.git
  track: 'main'
  ref: 1.21.1-53-g5be2d11b1c4f74823fe9cb4d19945660b818563c
- kind: git_repo
  url: gnome:libglnx.git
  directory: subprojects/libglnx
  # Meson wrap file
  # https://github.com/flatpak/xdg-desktop-portal/blob/main/subprojects/libglnx.wrap
  ref: ccea836b799256420788c463a638ded0636b1632
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: c6f2359cc1d00f16e0a0e2527fa0bc1882b8b5ab
