kind: cmake
sources:
- url: https://download.gnome.org/sources/evolution-data-server/3.28/evolution-data-server-3.28.1.tar.xz
  kind: tar
  ref: 6b04fc1adaba0541546267a77f1bc5aa549fe85eb9933492fdf994c69fa36989
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
