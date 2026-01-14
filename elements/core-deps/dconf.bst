kind: meson

sources:
- kind: git_repo
  url: gnome:dconf.git
  track: main
  ref: 0.49.0-5-g9e9c5bc8177048a2ee18531d6f68c2f06e0fc630
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 4758f6fb7f889e074e13df3f914328f3eecb1fd3

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbash_completion=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libdconf.so'
