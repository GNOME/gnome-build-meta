kind: cmake

sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.42/evolution-data-server-3.42.0.tar.xz
  ref: e8fdd3bc47a07d6f8a3052bbcae880f20f6dbc4f6973a8e90d00169bb99b1635
build-depends:
- core-deps/intltool.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libcanberra.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/openldap.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- sdk/webkitgtk.bst
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
