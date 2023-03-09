kind: stack
description: generic common zone for dependencies related to the PinePhone Pro & PinePhone.

depends:
- vm/wpa-supplicant-config.bst
- vm/NetworkManager-openvpn.bst
- vm/NetworkManager-openconnect.bst
- vm/NetworkManager-fortisslvpn.bst
- vm/NetworkManager-vpnc.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- core-deps/ModemManager.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- core/meta-gnome-core-mobile.bst
- vm/common-deps.bst
- vm/os-release-user.bst
- core-deps/feedbackd.bst
- core/calls.bst
- freedesktop-sdk.bst:components/iputils.bst
- custom/atinout.bst
- custom/eg25-manager.bst
- custom/iw.bst
- freedesktop-sdk.bst:components/usbutils.bst
- custom/testing-wallpaper.bst
- world/chatty.bst

- core-deps/xdg-desktop-portal.bst
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst
- core-deps/pipewire-daemon.bst
- core-deps/wireplumber.bst

- custom/alsa-utils.bst
- vm/alsa-ucm-conf.bst
