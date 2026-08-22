kind: meson

sources:
- kind: git_repo
  url: gnome:dconf.git
  track: main
  ref: 51.beta-2-g48bd826a01b13a9cec945c5eb3b3845ea0d73d5a
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 4758f6fb7f889e074e13df3f914328f3eecb1fd3

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst

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
