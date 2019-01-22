kind: cmake
sources:
- kind: tar
  url: https://download.gnome.org/sources/evolution-data-server/3.30/evolution-data-server-3.30.4.tar.xz
  ref: a39c12bfc14f72a1a577a63ab1f6d4a3b77ca25df8cdc7996261993b98be3ce0
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
