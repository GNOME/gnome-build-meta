kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf/0.34/dconf-0.34.0.tar.xz
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
