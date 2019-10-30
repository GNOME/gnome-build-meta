kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gjs.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-installed-tests
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
