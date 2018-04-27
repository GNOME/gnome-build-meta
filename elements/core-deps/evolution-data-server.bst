kind: cmake
sources:
- kind: git
  url: git_gnome_org:evolution-data-server
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/gcr.bst
- sdk/gnome-online-accounts.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libical.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/openldap.bst
- sdk/vala.bst
- base.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir}
