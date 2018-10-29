kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/zenity/3.30/zenity-3.30.0.tar.xz
  ref: 995ef696616492c40be6da99919851d41faed6643a97c9d24743b46bc8b537f2
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
