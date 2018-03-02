kind: autotools
sources:
- kind: git
  url: git_gnome_org:m4-common
  track: master
depends:
- core-deps/gnome-common.bst
- base.bst
public:
  bst:
    overlap-whitelist:
    - usr/share/aclocal/ax_check_enable_debug.m4
    - usr/share/aclocal/ax_code_coverage.m4
