kind: cmake
sources:
- kind: tar
  url: https://download.gnome.org/sources/evolution-data-server/3.28/evolution-data-server-3.28.2.tar.xz
  ref: 531a790182dc6b6b2d0421feb34489c7ddf5cc807e9cffbb87461d13e047f3ab
depends:
- core-deps/WebKit.bst
- core-deps/gcr.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/vala.bst
- base.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
