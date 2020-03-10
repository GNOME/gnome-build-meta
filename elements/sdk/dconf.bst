kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf/0.36/dconf-0.36.0.tar.xz
  ref: 9fe6bb22191fc2a036ad86fd8e7d165e9983c687b9fedccf85d46c799301da2d
- kind: patch
  path: files/dconf/dconf-override.patch
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dbash_completion=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libdconf.so'
