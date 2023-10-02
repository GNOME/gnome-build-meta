kind: cmake

sources:
- kind: git_repo
  url: github:google/libphonenumber
  track: v8.13.22
  ref: v8.13.22-0-g4189ef0fd972c8b54b8f9d25bf0d600ad9d80a9e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/protobuf.bst
- core/gnome-desktop.bst
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
