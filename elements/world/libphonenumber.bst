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

variables:
  # Element-specific extra arguments to be passed to `cmake`.
  cmake-local: 'cpp/'

  cmake-args: |

      -DCMAKE_VERBOSE_MAKEFILE=ON \
      -DCMAKE_INSTALL_PREFIX:PATH="%{prefix}" \
      -DCMAKE_INSTALL_LIBDIR:PATH="%{lib}" %{cmake-global} %{cmake-local} \
      -DREGENERATE_METADATA=OFF \
      -DUSE_BOOST=OFF \
      -DBUILD_TESTING=OFF \
      -DFETCHCONTENT_FULLY_DISCONNECTED=ON
