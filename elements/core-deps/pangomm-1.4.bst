kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pangomm/2.40/pangomm-2.40.2.tar.xz
  ref: 0a97aa72513db9088ca3034af923484108746dba146e98ed76842cf858322d05
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
