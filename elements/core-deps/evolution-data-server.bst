kind: cmake
sources:
- kind: tar
  url: https://download.gnome.org/sources/evolution-data-server/3.29/evolution-data-server-3.29.92.tar.xz
  ref: 0a0c0a6b48ecf54ca2802737530fafc96e346010451a04b439198e06c2ca9045
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
