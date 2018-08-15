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
kind: cmake
sources:
- kind: tar
  ref: 1361c399ad29771c8458bbe3627f056ad13f193fedcc7a737e839f675c7f0b03
  url: https://download.gnome.org/sources/evolution-data-server/3.29/evolution-data-server-3.29.91.tar.xz
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir}
