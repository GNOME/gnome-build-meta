kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gdm/3.34/gdm-3.34.1.tar.xz
  ref: e85df657aa8d9361af4fb122014d8f123a93bfe45a7662fba2b373d839dbd8d3
depends:
- core-deps/accountsservice.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-plymouth=no
