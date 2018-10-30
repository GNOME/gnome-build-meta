kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-common/3.18/gnome-common-3.18.0.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
config:
  install-commands:
    (>):
    - rm %{install-root}%{datadir}/aclocal/ax_check_enable_debug.m4
    - rm %{install-root}%{datadir}/aclocal/ax_code_coverage.m4
