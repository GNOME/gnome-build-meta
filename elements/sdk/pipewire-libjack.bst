kind: filter

build-depends:
- freedesktop-sdk.bst:components/pipewire-libjack.bst

runtime-depends:
- sdk/pipewire.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/pipewire-0.3/jack/libjack.so'
        - '%{libdir}/pipewire-0.3/jack/libjacknet.so'
        - '%{libdir}/pipewire-0.3/jack/libjackserver.so'

    integration-commands:
    - rm -f "%{libdir}"/libjack.so*
    - rm -f "%{libdir}"/libjacknet.so*
    - rm -f "%{libdir}"/libjackserver.so*
    - ln -sf pipewire-0.3/jack/libjack.so.0 "%{libdir}/libjack.so.0"
    - ln -sf pipewire-0.3/jack/libjackserver.so.0 "%{libdir}/libjackserver.so.0"
    - ln -sf pipewire-0.3/jack/libjacknet.so.0 "%{libdir}/libjacknet.so.0"
