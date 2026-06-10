kind: cmake

sources:
- kind: git_repo
  url: github:werman/noise-suppression-for-voice.git
  track: 'v*'
  ref: v1.21-0-g4b0a6f76fc8bcfb5a3603ae2cb6619dfcb0e19f2

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
