kind: meson

sources:
- kind: tar
  url: gnome_downloads:dconf/0.39/dconf-0.39.1.tar.xz
  ref: 9a3870bf07b8e0452e22ce068d51c7f19c1e1cfeacd9883c03523822afdff665

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
