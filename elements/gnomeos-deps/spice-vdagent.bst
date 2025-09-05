kind: autotools

sources:
- kind: git_repo
  url: freedesktop:spice/linux/vd_agent
  track: spice-vdagent*
  ref: spice-vdagent-0.22.1-0-ga9bb1752cede50757c47f6f8e1f52fb6bed93cd6
- kind: patch_queue
  path: patches/spice-vdagent/

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- core-deps/spice-protocol.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst
- freedesktop-sdk.bst:components/xorg-lib-xfixes.bst
- freedesktop-sdk.bst:components/xorg-lib-xinerama.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-session-info=systemd
    --with-init-script=systemd

config:
  install-commands:
    (>):
    - |
      rm -rf '%{install-root}%{sysconfdir}/xdg'
