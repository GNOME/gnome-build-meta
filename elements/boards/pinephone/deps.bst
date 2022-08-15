kind: stack

depends:
- core/meta-gnome-core-mobile.bst

- vm/common-deps.bst
- vm/os-release-user.bst

- boards/pinephone/initramfs.bst

- freedesktop-sdk.bst:components/linux-firmware.bst

- vm/wpa-supplicant-config.bst
- vm/NetworkManager-openvpn.bst
- vm/NetworkManager-openconnect.bst
- vm/NetworkManager-fortisslvpn.bst
- vm/NetworkManager-vpnc.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- core-deps/ModemManager.bst
- freedesktop-sdk.bst:components/iputils.bst