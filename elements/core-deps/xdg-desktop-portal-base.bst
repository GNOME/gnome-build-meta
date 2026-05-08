kind: meson

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/flatpak-minimal.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pipewire.bst
- sdk/libdex.bst

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
  (?):
  - channel == "nightly":
      track: main
  - channel == "stable":
      track: 1.[0-8][02468].*
  ref: 1.22.0-29-g89f2f5e3d219bc5fd66a2505ee772b16022e8575
- kind: git_repo
  url: gnome:libglnx.git
  directory: subprojects/libglnx
  # Meson wrap file
  # https://github.com/flatpak/xdg-desktop-portal/blob/main/subprojects/libglnx.wrap
  ref: ff64d52116ae74f0d25e24f089db28921ea171ff
- kind: git_repo
  url: gnome:gvdb.git
  directory: subprojects/gvdb
  # meson wrap file
  # https://github.com/flatpak/xdg-desktop-portal/blob/main/subprojects/gvdb.wrap
  ref: c6f2359cc1d00f16e0a0e2527fa0bc1882b8b5ab
