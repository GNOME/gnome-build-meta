kind: cmake
sources:
- kind: tar
  url: https://download.gnome.org/sources/evolution-data-server/3.31/evolution-data-server-3.31.1.tar.xz
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libical.bst
- core-deps/openldap.bst
- sdk/WebKitGTK+.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir}
