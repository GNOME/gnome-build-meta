kind: filter

build-depends:
- freedesktop-sdk.bst:components/pipewire-daemon.bst

runtime-depends:
- sdk/pipewire.bst
- core-deps/wireplumber.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/sbc.bst
- freedesktop-sdk.bst:components/bluez.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/libmysofa.bst
- freedesktop-sdk.bst:components/rtkit.bst
- freedesktop-sdk.bst:components/webrtc-audio-processing.bst
