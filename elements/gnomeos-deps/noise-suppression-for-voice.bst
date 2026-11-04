kind: cmake

sources:
- kind: git_repo
  url: github:werman/noise-suppression-for-voice.git
  track: 'v*'
  ref: v1.22-0-g0b8c03b368ca609247a0cb65b0c8eb651759dd69

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

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
