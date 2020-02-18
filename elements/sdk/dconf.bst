kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf/0.34/dconf-0.34.0.tar.xz
  ref: 943a94ab16121de5580ceaed2605b87444d1bca1c6cd8beefb778bcb0aa2da52
- kind: patch
  path: files/dconf/dconf-override.patch
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dbash_completion=false
