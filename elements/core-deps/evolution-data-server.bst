kind: cmake
sources:
- url: https://download.gnome.org/sources/evolution-data-server/3.27/evolution-data-server-3.27.90.tar.xz
  kind: tar
  ref: 76ea5fe632453dc38835d791adea7dbc2abf0f69552635cf1d868df7bc49537b
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
