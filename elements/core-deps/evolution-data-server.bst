kind: cmake
sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.34/evolution-data-server-3.34.4.tar.xz
  ref: 985c4b4b613c50c999a4ca5e9d52478acbea85e1e99bab3a8b6e57ba7eace8f3
depends:
- core-deps/gnome-online-accounts.bst
- filename: core-deps/intltool.bst
  type: build
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libical.bst
- core-deps/openldap.bst
- sdk/WebKitGTK.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: components/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir}
