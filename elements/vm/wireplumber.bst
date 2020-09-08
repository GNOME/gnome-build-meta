kind: filter

build-depends:
- freedesktop-sdk.bst:components/wireplumber.bst

runtime-depends:
- core-deps/pipewire-daemon.bst
- sdk/glib.bst
- sdk/pygobject.bst

public:
  bst:
    integration-commands:
    - sed -i 's,^exec .*pipewire-media-session.*,exec %{bindir}/wireplumber,'  '%{sysconfdir}/pipewire/pipewire.conf'
