kind: cmake
sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.35/evolution-data-server-3.35.91.tar.xz
  ref: a2e97173b4af85527f3df408cc11bb941c7520319aea4a42443dd321a38d4fc2
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libical.bst
- core-deps/openldap.bst
- sdk/WebKitGTK.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: -DENABLE_INTROSPECTION=ON -DENABLE_VALA_BINDINGS=ON -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF -DLIB_INSTALL_DIR=%{libdir} -DSYSCONF_INSTALL_DIR=%{sysconfdir}
