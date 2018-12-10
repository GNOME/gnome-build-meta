kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/atkmm/2.24/atkmm-2.24.3.tar.xz
  ref: 9235b343cc0dceaef6c405e66ff69812447aa9fd9557068a2dfe4a62bf78e3a9
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
