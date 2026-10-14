kind: cmake

sources:
- kind: git_repo
  url: gnome:evolution-data-server.git
  track: master
  ref: 3.62.0-49-g55edb803e250d36de18b28df19ce4c5e6f824534

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libcanberra.bst
- core-deps/libgweather.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk-extra.bst:components/openldap.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONF_INSTALL_DIR=%{sysconfdir}
    -DENABLE_GTK=ON
    -DENABLE_OAUTH2_WEBKITGTK=OFF
    -DENABLE_GTK4=ON
    -DENABLE_INTROSPECTION=ON
    -DENABLE_VALA_BINDINGS=ON
    -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
    -DWITH_GWEATHER4=ON
    -DWITH_LIBDB=OFF
    -DENABLE_GOOGLE=OFF
