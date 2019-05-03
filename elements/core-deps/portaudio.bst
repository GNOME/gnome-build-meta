kind: cmake
# FIXME: Rehost elsewhere to use https
sources:
- kind: tar
  url: http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
