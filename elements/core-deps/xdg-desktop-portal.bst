kind: filter

build-depends:
- freedesktop-sdk.bst:components/xdg-desktop-portal-base.bst

runtime-depends:
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal-manifest.bst
- freedesktop-sdk.bst:components/xdg-portal-interfaces.bst

config:
  include-orphans: true
  exclude:
  - interfaces

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/xdg-desktop-portal"
    - "%{project_licensedir}/xdg-desktop-portal/**"
