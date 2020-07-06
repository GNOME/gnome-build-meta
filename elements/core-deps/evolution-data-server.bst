kind: cmake
sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.36/evolution-data-server-3.36.4.tar.xz
  ref: 39f83f1eee65c18785dfc2594720d5150e3fc37ea57e7b3b9bc2c40b4d3e4c0f
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/openldap.bst
- sdk/WebKitGTK.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DENABLE_INTROSPECTION=ON
    -DENABLE_VALA_BINDINGS=ON
    -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONF_INSTALL_DIR=%{sysconfdir}
