kind: cmake

sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.38/evolution-data-server-3.38.1.tar.xz
  ref: 8ff278e9c334f185236182709ba46ab727db2830d0b4e09485c1e582e1f2e4b7
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
- sdk/WebKitGTK.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
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
