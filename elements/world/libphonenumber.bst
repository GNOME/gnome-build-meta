kind: cmake

sources:
- kind: git_tag
  url: github:google/libphonenumber
  track: v8.10.16
  ref: v8.10.16-0-gb0daf7ba45f0e8dac582b88634127e3f9671a587
- kind: patch
  path: files/libphonenumber/fix-libphonenumber-build.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/icu.bst
- core/gnome-desktop.bst
- core-deps/protobuf.bst
- core-deps/boost.bst
- core-deps/gspell.bst

- world/libgtest.bst
- world/re2.bst
- world/abseil.bst

variables:
  # Element-specific extra arguments to be passed to `cmake`.
  cmake-local: 'cpp/'

config:

  # Commands for configuring the software
  #
  configure-commands:
  - |
    sed -i -e 's/\${\${NAME}_BIN}-NOTFOUND/\${NAME}_BIN-NOTFOUND/' cpp/CMakeLists.txt
    %{cmake}
