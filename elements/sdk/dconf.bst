kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf/0.35/dconf-0.35.1.tar.xz
  ref: b8425c34a6558e360fe94f6abaebdaef3675b0074385be4392ac8ecd1a05bd1e
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
  meson-local: -Dbash_completion=false
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libdconf.so'
