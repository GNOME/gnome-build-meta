kind: cmake

sources:
- kind: git_repo
  url: gnome:evolution-data-server.git
  track: master
  ref: 3.58.0-35-g7b2668bdd659ad7a2adde76a103f1ad70d63f6a8

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libcanberra.bst
- core-deps/libgweather.bst
- core-deps/openldap.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk-6.0.bst
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
