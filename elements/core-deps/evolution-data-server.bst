kind: cmake

sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.40/evolution-data-server-3.40.4.tar.xz
  ref: 87c185f18c37270e3611981f19bd9221ac974c807462c8dce90bea08712c5800

build-depends:
- core-deps/intltool.bst
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
- sdk/libsoup.bst
- sdk/vala.bst
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
