kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-common/3.18/gnome-common-3.18.0.tar.xz
  ref: 22569e370ae755e04527b76328befc4c73b62bfd4a572499fde116b8318af8cf
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
config:
  install-commands:
    (>):
    - rm %{install-root}%{datadir}/aclocal/ax_check_enable_debug.m4
    - rm %{install-root}%{datadir}/aclocal/ax_code_coverage.m4
