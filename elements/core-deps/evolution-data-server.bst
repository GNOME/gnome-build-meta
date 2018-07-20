kind: cmake
sources:
- kind: tar
  url: https://download.gnome.org/sources/evolution-data-server/3.29/evolution-data-server-3.29.4.tar.xz
  ref: 71a5777e53be025d1b198f54a3448a0b045de13e0d8a8b3a9540bc25329a8207
depends:
- core-deps/WebKitGTK+.bst
- core-deps/gcr.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libical.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/openldap.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir}
