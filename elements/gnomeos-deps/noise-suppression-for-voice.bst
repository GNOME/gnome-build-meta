kind: cmake

sources:
- kind: git_repo
  url: github:werman/noise-suppression-for-voice.git
  track: 'v*'
  ref: v1.10-0-g9c4e5c28d8950e2cef837d8a0abd36c2fd9b5c2d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ladspa-sdk.bst

variables:
  cmake-local: >-
    -DBUILD_VST_PLUGIN:BOOL=OFF
    -DBUILD_VST3_PLUGIN:BOOL=OFF
    -DBUILD_LV2_PLUGIN:BOOL=OFF
    -DBUILD_AU_PLUGIN:BOOL=OFF
    -DBUILD_AUV3_PLUGIN:BOOL=OFF
