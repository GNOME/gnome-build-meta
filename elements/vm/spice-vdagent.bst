kind: autotools

sources:
- kind: tar
  url: https://spice-space.org/download/releases/spice-vdagent-0.20.0.tar.bz2
  ref: 2e6b7222675ee19ea38c52165abe4d836c2ac5d5bf902d4dfca13da1ec143359
- kind: patch
  path: files/spice-vdagent/fix-shutdown-hang.patch

  ref: 2e6b7222675ee19ea38c52165abe4d836c2ac5d5bf902d4dfca13da1ec143359
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-session-info=systemd
    --with-init-script=systemd
