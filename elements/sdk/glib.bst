kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib/2.62/glib-2.62.5.tar.xz
  ref: b8d1cdafa46658b63d7512efbe2cd21bd36cd7be83140e44930c47b79f82452e
depends:
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/libffi.bst
  junction: freedesktop-sdk.bst
- filename: components/util-linux.bst
  junction: freedesktop-sdk.bst
- filename: components/pcre.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
# a dummy dependency so our glib is always staged
# on top of freedesktop-sdk version
- filename: components/glib.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dgtk_doc=true -Dinstalled-tests=true -Dselinux=disabled
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
    overlap-whitelist:
    - '**'
