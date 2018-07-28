kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gobject-introspection
  track: master
- kind: patch
  path: 0001-Revert-Merge-branch-113-fix-memory-leaks-into-master.patch
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-python=python3
