kind: cmake
sources:
- kind: git
  url: gitlab_gnome_org:evolution-data-server
  track: master
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
