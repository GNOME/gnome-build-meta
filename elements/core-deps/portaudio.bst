kind: cmake
# FIXME: Rehost elsewhere to use https
sources:
- kind: tar
  url: http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
