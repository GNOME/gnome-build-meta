kind: autotools
sources:
- kind: tar
  url: http://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.17.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
