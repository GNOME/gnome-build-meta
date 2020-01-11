kind: meson
sources:
- kind: git_tag
  url: github_com:hughsie/PackageKit.git
  track: master
build-depends:
- core-deps/intltool.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dpackaging_backend=dummy
    -Dsystemd=true
    -Doffline_update=true
    -Dgobject_introspection=true
    -Dman_pages=true
    -Dgtk_doc=true
    -Dbash_completion=false
    -Dbash_command_not_found=false
    -Dgstreamer_plugin=false
    -Dpython_backend=false
    -Ddaemon_tests=false

