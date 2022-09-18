kind: cmake

sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.46/evolution-data-server-3.46.0.tar.xz
  ref: e5fa28095a183f7ab5a928e35a828379b481ddef83ed4c7b51a2e3c4aef5cdab
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libcanberra.bst
- core-deps/libgweather.bst
- core-deps/openldap.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONF_INSTALL_DIR=%{sysconfdir}
    -DENABLE_INTROSPECTION=ON
    -DENABLE_VALA_BINDINGS=ON
    -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
    -DWITH_GWEATHER4=ON
    -DWITH_LIBDB=OFF
    -DENABLE_GOOGLE=OFF
    -DENABLE_OAUTH2_WEBKITGTK4=OFF
